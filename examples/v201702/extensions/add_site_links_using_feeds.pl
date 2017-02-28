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
# This example adds a sitelinks feed and associates it with a campaign. To
# create a campaign, run add_campaigns.pl. To add sitelinks using the simpler
# ExtensionSetting services, see add_site_links.pl.

use strict;
use lib "../../../lib";

use Google::Ads::AdWords::Client;
use Google::Ads::AdWords::Logging;
use Google::Ads::AdWords::v201702::AttributeFieldMapping;
use Google::Ads::AdWords::v201702::CampaignFeed;
use Google::Ads::AdWords::v201702::CampaignFeedOperation;
use Google::Ads::AdWords::v201702::Feed;
use Google::Ads::AdWords::v201702::FeedAttribute;
use Google::Ads::AdWords::v201702::FeedItem;
use Google::Ads::AdWords::v201702::FeedItemAttributeValue;
use Google::Ads::AdWords::v201702::FeedItemGeoRestriction;
use Google::Ads::AdWords::v201702::FeedItemOperation;
use Google::Ads::AdWords::v201702::FeedMapping;
use Google::Ads::AdWords::v201702::FeedMappingOperation;
use Google::Ads::AdWords::v201702::FeedOperation;
use Google::Ads::AdWords::v201702::Function;
use Google::Ads::AdWords::v201702::Location;

use Cwd qw(abs_path);

# See the Placeholder reference page for a list of all the placeholder types and
# fields.
# https://developers.google.com/adwords/api/docs/appendix/placeholders
use constant PLACEHOLDER_SITELINKS                  => 1;
use constant PLACEHOLDER_FIELD_SITELINK_LINK_TEXT   => 1;
use constant PLACEHOLDER_FIELD_SITELINK_FINAL_URLS  => 5;
use constant PLACEHOLDER_FIELD_SITELINK_LINE_1_TEXT => 3;
use constant PLACEHOLDER_FIELD_SITELINK_LINE_2_TEXT => 4;

# Replace with valid values of your account.
my $campaign_id = "INSERT_CAMPAIGN_ID_HERE";
my $feed_name   = "INSERT_FEED_NAME_HERE";

# Example main subroutine.
sub add_site_links_using_feeds {
  my ($client, $campaign_id, $feed_name) = @_;

  my $site_links_data = {
    "siteLinksFeedId"             => 0,
    "linkTextFeedAttributeId"     => 0,
    "linkFinalUrlFeedAttributeId" => 0,
    "line1FeedAttributeId"        => 0,
    "line2FeedAttributeId"        => 0,
    "feedItemIds"                 => []};

  create_site_links_feed($client, $site_links_data, $feed_name);
  create_site_links_feed_items($client, $site_links_data);
  create_site_links_feed_mapping($client, $site_links_data);
  create_site_links_campaign_feed($client, $site_links_data, $campaign_id);

  return 1;
}

sub create_site_links_feed {
  my ($client, $site_links_data, $feed_name) = @_;

  my $text_attribute = Google::Ads::AdWords::v201702::FeedAttribute->new({
    type => "STRING",
    name => "Link Text"
  });
  my $final_url_attribute = Google::Ads::AdWords::v201702::FeedAttribute->new({
    type => "URL_LIST",
    name => "Link Final URLs"
  });
  my $line_1_attribute = Google::Ads::AdWords::v201702::FeedAttribute->new({
    type => "STRING",
    name => "Line 1 Description"
  });
  my $line_2_attribute = Google::Ads::AdWords::v201702::FeedAttribute->new({
    type => "STRING",
    name => "Line 2 Description"
  });
  my $feed = Google::Ads::AdWords::v201702::Feed->new({
      name       => $feed_name,
      attributes => [
        $text_attribute,   $final_url_attribute,
        $line_1_attribute, $line_2_attribute
      ],
      origin => "USER"
    });

  my $operation = Google::Ads::AdWords::v201702::FeedOperation->new({
    operator => "ADD",
    operand  => $feed
  });

  my $feed_result =
    $client->FeedService()->mutate({operations => [$operation]});

  my $saved_feed = $feed_result->get_value(0);

  $site_links_data->{"siteLinksFeedId"} = $saved_feed->get_id();

  my $saved_attributes = $saved_feed->get_attributes();

  $site_links_data->{"linkTextFeedAttributeId"} =
    $saved_attributes->[0]->get_id();
  $site_links_data->{"linkFinalUrlFeedAttributeId"} =
    $saved_attributes->[1]->get_id();
  $site_links_data->{"line1FeedAttributeId"} = $saved_attributes->[2]->get_id();
  $site_links_data->{"line2FeedAttributeId"} = $saved_attributes->[3]->get_id();
  printf(
    "Feed with name '%s' and ID %d with linkTextAttributeId %d" .
      " and linkFinalUrlAttributeId %d and line1AttributeId %d" .
      " and line2AttributeId %d was created.\n",
    $saved_feed->get_name(),          $saved_feed->get_id(),
    $saved_attributes->[0]->get_id(), $saved_attributes->[1]->get_id(),
    $saved_attributes->[2]->get_id(), $saved_attributes->[3]->get_id());
}

sub create_site_links_feed_items {
  my ($client, $site_links_data) = @_;

  my @operations = ();

  push @operations,
    create_feed_item_add_operation($site_links_data,
    "Home", "http://www.example.com", "Home line 1", "Home line 2");
  push @operations,
    create_feed_item_add_operation(
    $site_links_data, "Stores",
    "http://www.example.com/stores",
    "Stores line 1",
    "Stores line 2"
    );
  push @operations,
    create_feed_item_add_operation(
    $site_links_data, "On Sale", "http://www.example.com/sale",
    "On Sale line 1",
    "On Sale line 2"
    );
  push @operations,
    create_feed_item_add_operation(
    $site_links_data, "Support",
    "http://www.example.com/support",
    "Support line 1",
    "Support line 2"
    );
  push @operations,
    create_feed_item_add_operation(
    $site_links_data, "Products",
    "http://www.example.com/prods",
    "Products line 1",
    "Products line 2"
    );
  # This site link is using geographical targeting by specifying the criterion
  # ID for California.
  push @operations,
    create_feed_item_add_operation(
    $site_links_data, "About Us",
    "http://www.example.com/about",
    "About Us line 1",
    "About Us line 2", "21137"
    );

  my $result = $client->FeedItemService()->mutate({operations => \@operations});

  foreach my $feed_item (@{$result->get_value()}) {
    printf "FeedItem with feedItemId %d was added.\n",
      $feed_item->get_feedItemId();
    push $site_links_data->{"feedItemIds"}, $feed_item->get_feedItemId();
  }
}

sub create_feed_item_add_operation {
  my ($site_links_data, $text, $final_url, $line_1, $line_2, $location_id) = @_;

  my $text_attribute_value =
    Google::Ads::AdWords::v201702::FeedItemAttributeValue->new({
      feedAttributeId => $site_links_data->{"linkTextFeedAttributeId"},
      stringValue     => $text
    });
  my $final_url_attribute_value =
    Google::Ads::AdWords::v201702::FeedItemAttributeValue->new({
      feedAttributeId => $site_links_data->{"linkFinalUrlFeedAttributeId"},
      stringValues    => [$final_url]});
  my $line_1_attribute_value =
    Google::Ads::AdWords::v201702::FeedItemAttributeValue->new({
      feedAttributeId => $site_links_data->{"line1FeedAttributeId"},
      stringValue     => $line_1
    });
  my $line_2_attribute_value =
    Google::Ads::AdWords::v201702::FeedItemAttributeValue->new({
      feedAttributeId => $site_links_data->{"line2FeedAttributeId"},
      stringValue     => $line_2
    });

  my $feed_item = Google::Ads::AdWords::v201702::FeedItem->new({
      feedId          => $site_links_data->{"siteLinksFeedId"},
      attributeValues => [
        $text_attribute_value,   $final_url_attribute_value,
        $line_1_attribute_value, $line_2_attribute_value
      ]});

  # OPTIONAL: Use geographical targeting on a feed.
  # The IDs can be found in the documentation or retrieved with the
  # LocationCriterionService.
  if ($location_id) {
    my $location =
      Google::Ads::AdWords::v201702::Location->new({id => $location_id});
    $feed_item->set_geoTargeting($location);
    # OPTIONAL: Restrict targeting only to people physically within
    # the location.
    my $geo_targeting_restriction =
      Google::Ads::AdWords::v201702::FeedItemGeoRestriction->new({
        geoRestriction => "LOCATION_OF_PRESENCE"
      });
    $feed_item->set_geoTargetingRestriction($geo_targeting_restriction);
  }

  my $operation = Google::Ads::AdWords::v201702::FeedItemOperation->new({
    operand  => $feed_item,
    operator => "ADD"
  });

  return $operation;
}

sub create_site_links_feed_mapping {
  my ($client, $site_links_data) = @_;

  # Map the FeedAttributeIds to the fieldId constants.
  my $text_field_mapping =
    Google::Ads::AdWords::v201702::AttributeFieldMapping->new({
      feedAttributeId => $site_links_data->{"linkTextFeedAttributeId"},
      fieldId         => PLACEHOLDER_FIELD_SITELINK_LINK_TEXT
    });
  my $final_url_field_mapping =
    Google::Ads::AdWords::v201702::AttributeFieldMapping->new({
      feedAttributeId => $site_links_data->{"linkFinalUrlFeedAttributeId"},
      fieldId         => PLACEHOLDER_FIELD_SITELINK_FINAL_URLS
    });
  my $line_1_field_mapping =
    Google::Ads::AdWords::v201702::AttributeFieldMapping->new({
      feedAttributeId => $site_links_data->{"line1FeedAttributeId"},
      fieldId         => PLACEHOLDER_FIELD_SITELINK_LINE_1_TEXT
    });
  my $line_2_field_mapping =
    Google::Ads::AdWords::v201702::AttributeFieldMapping->new({
      feedAttributeId => $site_links_data->{"line2FeedAttributeId"},
      fieldId         => PLACEHOLDER_FIELD_SITELINK_LINE_2_TEXT
    });

  # Create the FeedMapping and operation.
  my $feed_mapping = Google::Ads::AdWords::v201702::FeedMapping->new({
      placeholderType        => PLACEHOLDER_SITELINKS,
      feedId                 => $site_links_data->{"siteLinksFeedId"},
      attributeFieldMappings => [
        $text_field_mapping,   $final_url_field_mapping,
        $line_1_field_mapping, $line_2_field_mapping
      ]});

  my $operation = Google::Ads::AdWords::v201702::FeedMappingOperation->new({
    operand  => $feed_mapping,
    operator => "ADD"
  });

  # Save the feed mapping.
  my $result =
    $client->FeedMappingService()->mutate({operations => [$operation]});

  foreach my $saved_feed_mapping (@{$result->get_value()}) {
    printf "Feed mapping with ID %d and placeholderType %d was saved for " .
      "feed with ID %d.\n", $saved_feed_mapping->get_feedMappingId(),
      $saved_feed_mapping->get_placeholderType(),
      $saved_feed_mapping->get_feedId();
  }
}

sub create_site_links_campaign_feed {
  my ($client, $site_links_data, $campaign_id) = @_;

  # Construct a matching function that assoicates the sitelink feed items
  # to the campaign, and sets the device preference to mobile.
  # See the matching function guide at
  # https://developers.google.com/adwords/api/docs/guides/feed-matching-functions
  # for more details.
  my $matching_function_string =
    sprintf("AND( IN(FEED_ITEM_ID, {%s}), EQUALS(CONTEXT.DEVICE, 'Mobile') )",
    (join ' ,', @{$site_links_data->{"feedItemIds"}}));

  my $matching_function = Google::Ads::AdWords::v201702::Function->new(
    {functionString => $matching_function_string});

  my $campaign_feed = Google::Ads::AdWords::v201702::CampaignFeed->new({
      feedId           => $site_links_data->{"siteLinksFeedId"},
      campaignId       => $campaign_id,
      matchingFunction => $matching_function,
      # Specifying placeholder types on the CampaignFeed allows the same feed
      # to be used for different placeholders in different Campaigns.
      placeholderTypes => [PLACEHOLDER_SITELINKS]});

  my $result = $client->CampaignFeedService()->mutate({
      operations => [
        Google::Ads::AdWords::v201702::CampaignFeedOperation->new({
            operand  => $campaign_feed,
            operator => "ADD"
          })]});

  $campaign_feed = $result->get_value(0);

  printf "Campaign with ID %d was associated with feed with ID %d.\n",
    $campaign_feed->get_campaignId(), $campaign_feed->get_feedId();
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
add_site_links_using_feeds($client, $campaign_id, $feed_name);
