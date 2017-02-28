#!/usr/bin/perl -w
#
# Copyright 2017, Google Inc. All Rights Reserved.
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
# This example removes an ad using the 'REMOVE' operator. To get ads, run
# basic_operations/get_text_ads.pl.

use strict;
use lib "../../../lib";
use utf8;

use Google::Ads::AdWords::Client;
use Google::Ads::AdWords::Logging;
use Google::Ads::AdWords::v201702::Ad;
use Google::Ads::AdWords::v201702::AdGroupAd;
use Google::Ads::AdWords::v201702::AdGroupAdOperation;

use Cwd qw(abs_path);

# Replace with valid values of your account.
my $ad_group_id = "INSERT_AD_GROUP_ID_HERE";
my $ad_id       = "INSERT_AD_ID_HERE";

# Example main subroutine.
sub remove_ad {
  my $client      = shift;
  my $ad_group_id = shift;
  my $ad_id       = shift;

  # Create base class ad to avoid setting type specific fields.
  my $ad = Google::Ads::AdWords::v201702::Ad->new({id => $ad_id,});

  # Create ad group ad.
  my $ad_group_ad = Google::Ads::AdWords::v201702::AdGroupAd->new({
      adGroupId => $ad_group_id,
      ad        => $ad
  });

  # Create operations.
  my $operation = Google::Ads::AdWords::v201702::AdGroupAdOperation->new({
      operand  => $ad_group_ad,
      operator => "REMOVE"
  });

  # Remove ad.
  my $result =
    $client->AdGroupAdService()->mutate({operations => [$operation]});

  # Display ads.
  if ($result->get_value()) {
    my $ad_group_ad = $result->get_value()->[0];
    printf "Ad with id \"%d\" and type \"%s\" was removed.\n",
      $ad_group_ad->get_ad()->get_id(),
      $ad_group_ad->get_ad()->get_Ad__Type();
  } else {
    print "No ad was removed.\n";
  }

  return 1;
}

# Don't run the example if the file is being included.
if (abs_path($0) ne abs_path(__FILE__)) {
  return 1;
}

# Log SOAP XML request, response and API errors.
Google::Ads::AdWords::Logging::enable_all_logging();

# Get AdWords Client, credentials will be read from ~/adwords.properties.
my $client = Google::Ads::AdWords::Client->new({version => "v201702"});

# By default examples are set to die on any server returned fault.
$client->set_die_on_faults(1);

# Call the example
remove_ad($client, $ad_group_id, $ad_id);
