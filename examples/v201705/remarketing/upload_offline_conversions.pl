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
# This code example imports offline call conversion values for calls to
# your account. To get Google Click ID for a click, run
# CLICK_PERFORMANCE_REPORT. To set up a conversion tracker, run the
# add_conversion_tracker.pl example.

use strict;
use lib "../../../lib";
use utf8;

use Google::Ads::AdWords::Client;
use Google::Ads::AdWords::Logging;
use Google::Ads::AdWords::v201705::UploadConversion;
use Google::Ads::AdWords::v201705::ConversionTrackerOperation;
use Google::Ads::AdWords::v201705::OfflineCallConversionFeed;
use Google::Ads::AdWords::v201705::OfflineCallConversionFeedOperation;

use Cwd qw(abs_path);
use Data::Uniqid qw(uniqid);

# Replace with valid values of your account.
my $conversion_name  = "INSERT_CONVERSION_NAME_HERE";
my $gclid            = "INSERT_GCLID_HERE";
my $conversion_time  = "INSERT_CONVERSION_TIME_HERE";
my $conversion_value = "INSERT_CONVERSION_VALUE_HERE";

# Example main subroutine.
sub upload_offline_conversions {
  my $client                        = shift;
  my $conversion_name               = shift;
  my $gclid                         = shift;
  my $conversion_time               = shift;
  my $conversion_value              = shift;
  my @offline_conversion_operations = ();

  # Associate offline conversions with the existing named conversion tracker. If
  # this tracker was newly created, it may be a few hours before it can accept
  # conversions.
  my $feed = Google::Ads::AdWords::v201705::OfflineCallConversionFeed->new({
      conversionName  => $conversion_name,
      conversionTime  => $conversion_time,
      conversionValue => $conversion_value,
      googleClickId   => $gclid
  });

  my $offline_conversion_operation =
    Google::Ads::AdWords::v201705::OfflineCallConversionFeedOperation->new({
      operator => "ADD",
      operand  => $feed
    });

  push @offline_conversion_operations, $offline_conversion_operation;

  # Add the upload conversion.
  my $feed_result =
    $client->OfflineCallConversionFeedService()
    ->mutate({operations => \@offline_conversion_operations});

  # Display results.
  if ($feed_result->get_value()) {
    foreach my $oc_feed (@{$feed_result->get_value()}) {
      printf "Uploaded offline conversion value of \"%s\" for Google Click " .
        "ID \"%s\" was created.\n",
        $oc_feed->get_conversionName(),
        $oc_feed->get_googleClickId();
    }
  } else {
    print "No offline conversion were added.\n";
    return;
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
my $client = Google::Ads::AdWords::Client->new({version => "v201705"});

# By default examples are set to die on any server returned fault.
$client->set_die_on_faults(1);

# Call the example
upload_offline_conversions($client, $conversion_name, $gclid, $conversion_time,
  $conversion_value);
