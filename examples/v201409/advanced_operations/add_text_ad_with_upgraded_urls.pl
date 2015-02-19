#!/usr/bin/perl -w
#
# Copyright 2014, Google Inc. All Rights Reserved.
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
# This example adds a text ad that uses advanced features of upgraded URLs.
#
# Tags: AdGroupAdService.mutate
# Author: Josh Radcliff <api.jradcliff@gmail.com>

use strict;
use lib "../../../lib";

use Google::Ads::AdWords::Client;
use Google::Ads::AdWords::Logging;
use Google::Ads::AdWords::v201409::AdGroupAd;
use Google::Ads::AdWords::v201409::AdGroupAdOperation;
use Google::Ads::AdWords::v201409::CustomParameter;
use Google::Ads::AdWords::v201409::CustomParameters;
use Google::Ads::AdWords::v201409::Image;
use Google::Ads::AdWords::v201409::ImageAd;
use Google::Ads::AdWords::v201409::TemplateAd;
use Google::Ads::AdWords::v201409::TextAd;
use Google::Ads::AdWords::v201409::Video;
use Google::Ads::Common::MediaUtils;

use Cwd qw(abs_path);
use Data::Uniqid qw(uniqid);

# Replace with valid values of your account.
my $ad_group_id = "INSERT_AD_GROUP_ID_HERE";

# Example main subroutine.
sub add_text_ad_with_upgraded_urls {
  my $client = shift;
  my $ad_group_id = shift;

  # Create text ad.
  my $text_ad = Google::Ads::AdWords::v201409::TextAd->new({
      headline => "Cruise to Mars #" . substr(uniqid(), 0, 8),
      description1 => "Visit the Red Planet in style.",
      description2 => "Buy your tickets now!",
      displayUrl => "www.example.com/cruises",
      url => "http://www.example.com"
  });

  # Specify a tracking url for 3rd party tracking provider. You may
  # specify one at customer, campaign, ad group, ad, criterion or
  # feed item levels.
  $text_ad->set_trackingUrlTemplate(
      "http://tracker.example.com/?season={_season}&promocode={_promocode}&" .
      "u={lpurl}"
  );

  # Since your tracking url has two custom parameters, provide their
  # values too. This can be provided at campaign, ad group, ad, criterion
  # or feed item levels.
  my $season_parameter = Google::Ads::AdWords::v201409::CustomParameter->new({
      key => "season",
      value => "christmas"
  });
  my $promo_code_parameter =
      Google::Ads::AdWords::v201409::CustomParameter->new({
          key => "promocode",
          value => "NYC123"
      });
  my $tracking_url_parameters =
      Google::Ads::AdWords::v201409::CustomParameters->new({
          parameters => [ $season_parameter, $promo_code_parameter ]
      });

  $text_ad->set_urlCustomParameters($tracking_url_parameters);

  # Specify a list of final urls. This field cannot be set if url field is
  # set. This may be specified at ad, criterion, and feed item levels.
  $text_ad->set_finalUrls([
      "http://www.example.com/cruise/space/",
      "http://www.example.com/locations/mars/"
  ]);
  # Specify a list of final mobile urls. This field cannot be set if url field
  # is set or finalUrls is not set. This may be specified at ad, criterion, and
  # feed item levels.
  $text_ad->set_finalMobileUrls([
      "http://mobile.example.com/cruise/space/",
      "http://mobile.example.com/locations/mars/"
  ]);

  # Create ad group ad for the text ad.
  my $text_ad_group_ad = Google::Ads::AdWords::v201409::AdGroupAd->new({
      adGroupId => $ad_group_id,
      ad => $text_ad,
      # Additional properties (non-required).
      status => "PAUSED"
  });

  # Create operation.
  my $text_ad_group_ad_operation =
    Google::Ads::AdWords::v201409::AdGroupAdOperation->new({
      operator => "ADD",
      operand => $text_ad_group_ad
  });

  # Add text ads.
  my $result = $client->AdGroupAdService()->mutate({
      operations => [$text_ad_group_ad_operation]
  });

  # Display results.
  if ($result->get_value()) {
    foreach my $ad_group_ad (@{$result->get_value()}) {
      printf "New text ad with id \"%d\" and display url \"%s\" was added.\n",
             $ad_group_ad->get_ad()->get_id(),
             $ad_group_ad->get_ad()->get_displayUrl();
    }
  } else {
    print "No text ads were added.\n";
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
my $client = Google::Ads::AdWords::Client->new({version => "v201409"});

# By default examples are set to die on any server returned fault.
$client->set_die_on_faults(1);

# Call the example
add_text_ad_with_upgraded_urls($client, $ad_group_id);
