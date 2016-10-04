#!/usr/bin/perl -w
#
# Copyright 2016, Google Inc. All Rights Reserved.
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
# This example adds two rule-based remarketing user lists: one with no site
# visit date restrictions, and another that will only include users who visit
# your site in the next six months.

use strict;
use lib "../../../lib";

use Google::Ads::AdWords::Client;
use Google::Ads::AdWords::Logging;
use Google::Ads::AdWords::v201609::BasicUserList;
use Google::Ads::AdWords::v201609::DateKey;
use Google::Ads::AdWords::v201609::DateRuleItem;
use Google::Ads::AdWords::v201609::DateSpecificRuleUserList;
use Google::Ads::AdWords::v201609::ExpressionRuleUserList;
use Google::Ads::AdWords::v201609::NumberKey;
use Google::Ads::AdWords::v201609::NumberRuleItem;
use Google::Ads::AdWords::v201609::Operator;
use Google::Ads::AdWords::v201609::Rule;
use Google::Ads::AdWords::v201609::RuleItem;
use Google::Ads::AdWords::v201609::RuleItemGroup;
use Google::Ads::AdWords::v201609::StringKey;
use Google::Ads::AdWords::v201609::StringRuleItem;
use Google::Ads::AdWords::v201609::UserListOperation;

use Cwd qw(abs_path);
use Data::Uniqid qw(uniqid);

# Example main subroutine.
sub add_rule_based_user_lists {
  my $client = shift;

  # First rule item group - users who visited the checkout page and had more
  # than one item in their shopping cart.
  my $checkout_string_rule_item =
    Google::Ads::AdWords::v201609::StringRuleItem->new({
      key => Google::Ads::AdWords::v201609::StringKey->new(
        {name => "ecomm_pagetype"}
      ),
      op    => "EQUALS",
      value => "checkout"
    });
  my $checkout_rule_item = Google::Ads::AdWords::v201609::RuleItem->new(
    {StringRuleItem => $checkout_string_rule_item});

  my $cart_size_number_rule_item =
    Google::Ads::AdWords::v201609::NumberRuleItem->new({
      key =>
        Google::Ads::AdWords::v201609::NumberKey->new({name => "cartsize"}),
      op    => "GREATER_THAN",
      value => "1"
    });
  my $cart_size_rule_item = Google::Ads::AdWords::v201609::RuleItem->new(
    {NumberRuleItem => $cart_size_number_rule_item});

  # Combine the two rule items into a RuleItemGroup so AdWords will AND their
  # rules together.
  my $checkout_multiple_item_group =
    Google::Ads::AdWords::v201609::RuleItemGroup->new(
    {items => [$checkout_rule_item, $cart_size_rule_item]});

  # Second rule item group - users who check out during the next three months.
  my ($sec, $min, $hour, $mday, $mon, $year) = localtime();
  my $rule_start_date =
    sprintf("%d%02d%02d", ($year + 1900), ($mon + 1), $mday);
  ($sec, $min, $hour, $mday, $mon, $year) =
    localtime(time + 60 * 60 * 24 * 30 * 3);
  my $rule_end_date = sprintf("%d%02d%02d", ($year + 1900), ($mon + 1), $mday);

  my $start_date_date_rule_item =
    Google::Ads::AdWords::v201609::DateRuleItem->new({
      key =>
        Google::Ads::AdWords::v201609::DateKey->new({name => "checkoutdate"}),
      op    => "AFTER",
      value => $rule_start_date
    });

  my $start_date_rule_item = Google::Ads::AdWords::v201609::RuleItem->new(
    {DateRuleItem => $start_date_date_rule_item});

  my $end_date_date_rule_item =
    Google::Ads::AdWords::v201609::DateRuleItem->new({
      key =>
        Google::Ads::AdWords::v201609::DateKey->new({name => "checkoutdate"}),
      op    => "BEFORE",
      value => $rule_end_date
    });

  my $end_date_rule_item = Google::Ads::AdWords::v201609::RuleItem->new(
    {DateRuleItem => $end_date_date_rule_item});

  # Combine the date rule items into a RuleItemGroup.
  my $checked_out_next_three_months_item_group =
    Google::Ads::AdWords::v201609::RuleItemGroup->new(
    {items => [$start_date_rule_item, $end_date_rule_item]});

  # Combine the rule item groups into a Rule so AdWords will OR the groups
  # together.
  my $rule = Google::Ads::AdWords::v201609::Rule->new({
      groups => [
        $checkout_multiple_item_group, $checked_out_next_three_months_item_group
      ]});

  # Create the user list with no restrictions on site visit date.
  ($sec, $min, $hour, $mday, $mon, $year) = localtime();
  my $creation_time = sprintf(
    "%d%02d%02d_%02d%02d%02d",
    ($year + 1900),
    ($mon + 1),
    $mday, $hour, $min, $sec
  );
  my $expression_user_list =
    Google::Ads::AdWords::v201609::ExpressionRuleUserList->new({
      name        => "Expression based user list created at ${creation_time}",
      description => "Users who checked out in six month window OR " .
        "visited the checkout page with more than one item in their cart",
      rule => $rule
    });

  # Create the user list restricted to users who visit your site within the
  # next six months.
  ($sec, $min, $hour, $mday, $mon, $year) = localtime();
  my $list_start_date =
    sprintf("%d%02d%02d", ($year + 1900), ($mon + 1), $mday);
  ($sec, $min, $hour, $mday, $mon, $year) =
    localtime(time + 60 * 60 * 24 * 30 * 6);
  my $list_end_date = sprintf("%d%02d%02d", ($year + 1900), ($mon + 1), $mday);

  my $date_user_list =
    Google::Ads::AdWords::v201609::DateSpecificRuleUserList->new({
      name        => "Date rule user list created at ${creation_time}",
      description => "Users who visited the site between " .
        "${list_start_date} and ${list_end_date} and checked out " .
        "in three month window OR visited the checkout page with " .
        "more than one item in their cart.",
      rule      => $rule,
      startDate => $list_start_date,
      endDate   => $list_end_date
    });

  # Create operations to add the user lists.
  my $operations = [
    Google::Ads::AdWords::v201609::UserListOperation->new({
        operator => "ADD",
        operand  => $expression_user_list
      }
    ),
    Google::Ads::AdWords::v201609::UserListOperation->new({
        operator => "ADD",
        operand  => $date_user_list
      })];

  # Submit the operations.
  my $result =
    $client->AdwordsUserListService()->mutate({operations => $operations});

  if ($result->get_value()) {
    foreach my $user_list (@{$result->get_value}) {
      printf "User list added with ID %d, name '%s', status '%s', list " .
        "type '%s', accountUserListStatus '%s', description '%s'.\n",
        $user_list->get_id(),     $user_list->get_name(),
        $user_list->get_status(), $user_list->get_listType(),
        $user_list->get_accountUserListStatus(),
        $user_list->get_description();
    }
  } else {
    print "No user list was added.";
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
my $client = Google::Ads::AdWords::Client->new({version => "v201609"});

# By default examples are set to die on any server returned fault.
$client->set_die_on_faults(1);

# Call the example
add_rule_based_user_lists($client);
