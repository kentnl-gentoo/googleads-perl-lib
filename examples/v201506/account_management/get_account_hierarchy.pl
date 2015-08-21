#!/usr/bin/perl -w
#
# Copyright 2015, Google Inc. All Rights Reserved.
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
# This example gets the account hierarchy under the current account.
#
# Note: This example won't work if your token is not approved and you are only
# targeting test accounts. See
# https://developers.google.com/adwords/api/docs/test-accounts

use strict;
use lib "../../../lib";

use Google::Ads::AdWords::Client;
use Google::Ads::AdWords::Logging;
use Google::Ads::AdWords::v201506::Selector;

use Cwd qw(abs_path);

sub display_customers_tree;

# Example main subroutine.
sub get_account_hierarchy {
  my $client = shift;

  # Create selector.
  my $selector = Google::Ads::AdWords::v201506::Selector->new(
    {fields => ["Name", "CustomerId"]});

  # Get account graph.
  my $graph =
    $client->ManagedCustomerService()->get({serviceSelector => $selector});

  # Display accounts graph.
  if ($graph->get_entries()) {
    # Create map from customerId to parent and child links.
    my $child_links  = {};
    my $parent_links = {};
    if ($graph->get_links()) {
      foreach my $link (@{$graph->get_links()}) {
        if (!$child_links->{$link->get_managerCustomerId()}) {
          $child_links->{$link->get_managerCustomerId()} = [];
        }
        push @{$child_links->{$link->get_managerCustomerId()}}, $link;
        if (!$parent_links->{$link->get_clientCustomerId()}) {
          $parent_links->{$link->get_clientCustomerId()} = [];
        }
        push @{$parent_links->{$link->get_clientCustomerId()}}, $link;
      }
    }
    # Create map from customerID to account, and find root account.
    my $customers = {};
    my $root_account;
    foreach my $customer (@{$graph->get_entries()}) {
      $customers->{$customer->get_customerId()} = $customer;
      if (!$parent_links->{$customer->get_customerId()}) {
        $root_account = $customer;
      }
    }
    # Display customers tree.
    print "CustomerId, Name\n";
    display_customers_tree($root_account, undef, $customers, $child_links, 0);
  } else {
    print "No serviced accounts were found.\n";
  }

  return 1;
}

# Displays an account tree, starting at the account and link provided, and
# recursing to all child accounts.
sub display_customers_tree {
  my ($customer, $link, $customers, $links, $depth) = @_;
  print "-" x ($depth * 2);
  print " ";
  print $customer->get_customerId();
  print ", " .
    ($customer->get_name() ne "" ? $customer->get_name() : "(no name)");
  print "\n";
  if ($links->{$customer->get_customerId()}) {
    foreach my $child_link (@{$links->{$customer->get_customerId()}}) {
      my $child_account = $customers->{$child_link->get_clientCustomerId()};
      display_customers_tree($child_account, $child_link, $customers, $links,
        $depth + 1);
    }
  }
}

# Don't run the example if the file is being included.
if (abs_path($0) ne abs_path(__FILE__)) {
  return 1;
}

# Log SOAP XML request, response and API errors.
Google::Ads::AdWords::Logging::enable_all_logging();

# Get AdWords Client, credentials will be read from ~/adwords.properties.
my $client = Google::Ads::AdWords::Client->new({version => "v201506"});

# By default examples are set to die on any server returned fault.
$client->set_die_on_faults(1);

# Call the example
get_account_hierarchy($client);
