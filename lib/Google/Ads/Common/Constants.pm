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
#
# Module to store package-level constants.

package Google::Ads::Common::Constants;

use strict;
use warnings;
use version;

# Main version number that the rest of the modules on this package pick up
# off of.
our $VERSION = qv("3.4.0");

use constant NO_AUTH_HANDLER_IS_SETUP_MESSAGE =>
  "The library couldn't find any authorization mechanism set up to " .
  "properly sign the requests against the API. Please read the following " .
  "guide on how to setup OAuth2 " .
  "https://github.com/googleads/googleads-perl-lib/wiki/Using-OAuth-2.0";

1;
