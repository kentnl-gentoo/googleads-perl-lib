# Copyright 2011, Google Inc. All Rights Reserved.
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

package Google::Ads::Common::AuthError;

use strict;
use version;

# The following needs to be on one line because CPAN uses a particularly hacky
# eval() to determine module versions.
use Google::Ads::Common::Constants; our $VERSION = ${Google::Ads::Common::Constants::VERSION};

use Class::Std::Fast;

# Class::Std-style attributes. Need to be kept in the same line.
my %message_of : ATTR(:name<message>);
my %code_of : ATTR(:name<code>);
my %content_of : ATTR(:name<content>);

sub as_string : STRINGIFY {
  my $self = shift;
  return
    sprintf("AuthError {\n  message: %s\n  code: %s\n" . "  content: %s\n}",
    $self->get_message(), $self->get_code(), $self->get_content());
}

1;

=pod

=head1 NAME

Google::Ads::Common::AuthError

=head1 DESCRIPTION

Captures authorization error information.

=head1 ATTRIBUTES

Each of these attributes can be set via
Google::Ads::Common::AuthError->new().
Alternatively, there is a get_ and set_ method associated with each attribute
for retrieving or setting them dynamically.

=head2 message

Holds the error message.

=head2 code

Holds the HTTP code associated to the error.

=head2 content

Holds the body of the error response.

=head1 LICENSE AND COPYRIGHT

Copyright 2012 Google Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=head1 AUTHOR

David Torres E<lt>api.davidtorres at gmail.comE<gt>

=head1 REPOSITORY INFORMATION

 $Rev: $
 $LastChangedBy: $
 $Id: $

=cut
