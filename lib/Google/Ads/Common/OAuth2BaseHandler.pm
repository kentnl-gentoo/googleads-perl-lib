# Copyright 2013, Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

package Google::Ads::Common::OAuth2BaseHandler;

use strict;
use version;
use base qw(Google::Ads::Common::AuthHandlerInterface);

# The following needs to be on one line because CPAN uses a particularly hacky
# eval() to determine module versions.
use Google::Ads::Common::Constants; our $VERSION = ${Google::Ads::Common::Constants::VERSION};

use Class::Std::Fast;
use HTTP::Request::Common;
use LWP::UserAgent;
use URI::Escape;

use constant OAUTH2_TOKEN_INFO_URL =>
  "https://www.googleapis.com/oauth2/v1/tokeninfo";

# Class::Std-style attributes. Need to be kept in the same line.
# These need to go in the same line for older Perl interpreters to understand.
my %api_client_of : ATTR(:name<api_client> :default<>);
my %client_id_of : ATTR(:name<client_id> :default<>);
my %access_token_of : ATTR(:init_arg<access_token> :default<>);
my %access_token_expires_of : ATTR(:name<access_token_expires> :default<>);
my %__user_agent_of : ATTR(:name<__user_agent> :default<>);

# Constructor
sub START {
  my ($self, $ident) = @_;

  $__user_agent_of{$ident} ||= LWP::UserAgent->new();
}

# Methods from Google::Ads::Common::AuthHandlerInterface
sub initialize : CUMULATIVE(BASE FIRST) {
  my ($self, $api_client, $properties) = @_;
  my $ident = ident $self;

  $api_client_of{$ident} = $api_client;
  $client_id_of{$ident}  = $properties->{oAuth2ClientId}
    || $client_id_of{$ident};
  $access_token_of{$ident} = $properties->{oAuth2AccessToken}
    || $access_token_of{$ident};
}

sub prepare_request {
  my ($self, $endpoint, $http_headers, $envelope) = @_;

  my $access_token = $self->get_access_token();

  if (!$access_token) {
    my $api_client = $self->get_api_client();
    my $err_msg =
      "Unable to prepare a request, authorization info is " .
      "incomplete or invalid.";
    $api_client->get_die_on_faults() ? die($err_msg) : warn($err_msg);
    return;
  }

  push @{$http_headers}, ("Authorization", "Bearer ${access_token}");

  return HTTP::Request->new('POST', $endpoint, $http_headers, $envelope);
}

sub is_auth_enabled {
  my ($self) = @_;

  return $self->get_access_token();
}

# Custom getters and setters for the access token with logic to auto-refresh.
sub get_access_token {
  my $self  = shift;
  my $ident = ident $self;

  if (!$self->_is_access_token_valid()) {
    if (!$self->_refresh_access_token()) {
      return undef;
    }

    return $access_token_of{$ident};
  }

  return $access_token_of{$ident};
}

sub set_access_token {
  my ($self, $token) = @_;

  $access_token_of{ident $self}         = $token;
  $access_token_expires_of{ident $self} = undef;
}

# Internal methods

# Checks if:
#   - the access token is set
#   - if the token has no expiration set then assumes it was manually set and:
#       - checks the token info, if it is valid then set its expiration
#       - checks the token scopes
#   - checks the token has not expired
sub _is_access_token_valid {
  my $self  = shift;
  my $ident = ident $self;

  my $access_token = $access_token_of{$ident};
  if (!$access_token) {
    return 0;
  }

  if (!$self->get_access_token_expires()) {
    my $url =
      OAUTH2_TOKEN_INFO_URL . "?access_token=" . uri_escape($access_token);
    my $res = $self->get___user_agent()->request(GET $url);
    if (!$res->is_success()) {
      return 0;
    }
    my $content_hash = $self->__parse_auth_response($res->decoded_content());
    my %token_scopes = map { $_ => 1 } split(" ", $content_hash->{scope});

    foreach my $required_scope ($self->_scope()) {
      if (!exists($token_scopes{$required_scope})) {
        return 0;
      }
    }
    $self->set_access_token_expires(time + $content_hash->{expires_in});
  }

  return time < $self->get_access_token_expires() - 10;
}

sub __parse_auth_response {
  my ($self, $response_content) = @_;

  my %content_hash = ();
  while (
    $response_content =~ m/([^"]+)"\s*:\s*"([^"]+)|([^"]+)"\s*:\s*([0-9]+)/g)
  {
    if ($1 && $2) {
      $content_hash{$1} = $2;
    } else {
      $content_hash{$3} = $4;
    }
  }

  return \%content_hash;
}

sub _throw_error {
  my ($self, $err_msg) = @_;

  $self->get_api_client()->get_die_on_faults() ? die($err_msg) : warn($err_msg);
}

# To be implemented by concrete implementations.
sub _scope {
  my $self = shift;
  die "Need to be implemented by subclass";
}

sub _refresh_access_token {
  die "Need to be implemented by subclass";
}

1;

=pod

=head1 NAME

Google::Ads::Common::OAuth2BaseHandler

=head1 DESCRIPTION

An abstract base implementation that defines part of the logic required to use
OAuth2 against Google APIs.

It is meant to be specialized and its L<_scope>, L<_refresh_access_token>
methods be properly implemented.

=head1 ATTRIBUTES

Each of these attributes can be set via
Google::Ads::Common::OAuth2BaseHandler->new().

Alternatively, there is a get_ and set_ method associated with each attribute
for retrieving or setting them dynamically.

my %api_client_of : ATTR(:name<api_client> :default<>);
my %client_id_of : ATTR(:name<client_id> :default<>);
my %access_token_of : ATTR(:init_arg<access_token> :default<>);
my %access_token_expires_of : ATTR(:name<access_token_expires> :default<>);

=head2 api_client

A reference to the API client used to send requests.

=head2 client_id

OAuth2 client id obtained from the Google APIs Console.

=head2 access_token

Stores an OAuth2 access token after the authorization flow is followed or for
you to manually set it in case you had it previously stored.
If this is manually set this handler will verify its validity before preparing
a request.

=head1 METHODS

=head2 initialize

Initializes the handler with properties such as the client_id and access_token.

=head3 Parameters

=over

=item *

A required I<api_client> with a reference to the API client object handling the
requests against the API.

=item *

A hash reference with the following keys:
{
  # Refer to the documentation of the L<client_id> property.
  oAuth2ClientId => "consumer key",
  # Refer to the documentation of the L<client_secret> property.
  oAuth2AccessToken => "secret",
  # Refer to the documentation of the L<refresh_token> property.
}

=head1 LICENSE AND COPYRIGHT

Copyright 2013 Google Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=head1 REPOSITORY INFORMATION

 $Rev: $
 $LastChangedBy: $
 $Id: $

=cut
