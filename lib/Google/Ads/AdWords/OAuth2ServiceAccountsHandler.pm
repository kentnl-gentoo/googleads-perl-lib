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

package Google::Ads::AdWords::OAuth2ServiceAccountsHandler;

use strict;
use warnings;
use version;
use base qw(Google::Ads::Common::OAuth2ServiceAccountsHandler);

# The following needs to be on one line because CPAN uses a particularly hacky
# eval() to determine module versions.
use Google::Ads::AdWords::Constants; our $VERSION = ${Google::Ads::AdWords::Constants::VERSION};

use Class::Std::Fast;

# Retrieve the OAuth2 scopes as an array.
sub _scope {
  my $self              = shift;
  my @parsed_scopes     = ();
  my $additional_scopes = $self->get_additional_scopes();
  if ($additional_scopes) {
    @parsed_scopes = split(/\s*,\s*/, $additional_scopes);
  }
  push @parsed_scopes, Google::Ads::AdWords::Constants::DEFAULT_OAUTH_SCOPE;
  return @parsed_scopes;
}

# Retrieves the OAuth2 scopes defined in _scope as a comma-separated list
# This is the format expected when sending the OAuth request.
sub _formatted_scopes {
  my $self          = shift;
  my @parsed_scopes = $self->_scope();
  return join(',', @parsed_scopes);
}

1;

=pod

=head1 NAME

Google::Ads::AdWords::OAuth2ServiceAccountsHandler

=head1 DESCRIPTION

A concrete implementation of
L<Google::Ads::Common::OAuth2ServiceAccountsHandler> that
defines the scope required to access AdWords API servers using
OAuth2 for Service Accounts, see
<https://developers.google.com/accounts/docs/OAuth2> for details of the
protocol.

Refer to the base object L<Google::Ads::Common::OAuth2ServiceAccountsHandler>
for a complete documentation of all the methods supported by this handler class.

=head1 ATTRIBUTES

Each of these attributes can be set via the constructor as a hash.
Alternatively, there is a get_ and set_ method associated with each attribute
for retrieving or setting them dynamically.

=head1 METHODS

=head2 _scope

Method defined by L<Google::Ads::AdWords::AuthTokenHandler> and implemented
in this class as a requirement for the OAuth2 protocol.

=head2 _formatted_scopes

Method defined by L<Google::Ads::Common::OAuth2ApplicationsHandler> and
implemented in this class as a requirement for the OAuth2 protocol.

=head3 Returns

Returns the scope used to generate access tokens.

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
