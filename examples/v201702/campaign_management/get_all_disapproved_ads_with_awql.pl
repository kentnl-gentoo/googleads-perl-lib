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
# This example gets all disapproved ads in an ad group using AWQL.
# To add ads, run basic_operations/add_text_ads.pl. To get ad groups, run
# basic_operations/get_ad_groups.pl.

use strict;
use lib "../../../lib";

use Google::Ads::AdWords::Client;
use Google::Ads::AdWords::Logging;
use Google::Ads::AdWords::v201702::OrderBy;
use Google::Ads::AdWords::v201702::Paging;
use Google::Ads::AdWords::v201702::Predicate;
use Google::Ads::AdWords::v201702::Selector;
use Google::Ads::AdWords::Utilities::PageProcessor;

use Cwd qw(abs_path);

use constant PAGE_SIZE => 500;

# Replace with valid values of your account.
my $ad_group_id = "INSERT_AD_GROUP_ID_HERE";

# Example main subroutine.
sub get_all_disapproved_ads_with_awql {
  my $client      = shift;
  my $ad_group_id = shift;

  # Get all the disapproved ads for the given ad group.
  my $query =
    "SELECT Id, AdGroupAdDisapprovalReasons WHERE AdGroupId = " .
    "${ad_group_id} AND AdGroupCreativeApprovalStatus = " .
    "DISAPPROVED ORDER BY Id";

  # Paginate through results.
  # The contents of the subroutine will be executed for each disapproved ad.
  Google::Ads::AdWords::Utilities::PageProcessor->new({
      client    => $client,
      service   => $client->AdGroupAdService(),
      query     => $query,
      page_size => PAGE_SIZE
    }
    )->process_entries(
    sub {
      my ($ad_group_ad) = @_;
      printf "Ad with id \"%s\" and type \"%s\" was disapproved for the " .
        "following reasons:\n", $ad_group_ad->get_ad()->get_id(),
        $ad_group_ad->get_ad()->get_Ad__Type();
      foreach my $reason (@{$ad_group_ad->get_ad()->get_disapprovalReasons()}) {
        printf "  \"%s\"\n", $reason;
      }
    });

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
get_all_disapproved_ads_with_awql($client, $ad_group_id);
