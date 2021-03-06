package Google::Ads::AdWords::v201708::AdGroupAdPolicySummary;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201708' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %policyTopicEntries_of :ATTR(:get<policyTopicEntries>);
my %reviewState_of :ATTR(:get<reviewState>);
my %denormalizedStatus_of :ATTR(:get<denormalizedStatus>);
my %combinedApprovalStatus_of :ATTR(:get<combinedApprovalStatus>);

__PACKAGE__->_factory(
    [ qw(        policyTopicEntries
        reviewState
        denormalizedStatus
        combinedApprovalStatus

    ) ],
    {
        'policyTopicEntries' => \%policyTopicEntries_of,
        'reviewState' => \%reviewState_of,
        'denormalizedStatus' => \%denormalizedStatus_of,
        'combinedApprovalStatus' => \%combinedApprovalStatus_of,
    },
    {
        'policyTopicEntries' => 'Google::Ads::AdWords::v201708::PolicyTopicEntry',
        'reviewState' => 'Google::Ads::AdWords::v201708::PolicySummaryReviewState',
        'denormalizedStatus' => 'Google::Ads::AdWords::v201708::PolicySummaryDenormalizedStatus',
        'combinedApprovalStatus' => 'Google::Ads::AdWords::v201708::PolicyApprovalStatus',
    },
    {

        'policyTopicEntries' => 'policyTopicEntries',
        'reviewState' => 'reviewState',
        'denormalizedStatus' => 'denormalizedStatus',
        'combinedApprovalStatus' => 'combinedApprovalStatus',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201708::AdGroupAdPolicySummary

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdGroupAdPolicySummary from the namespace https://adwords.google.com/api/adwords/cm/v201708.

Contains policy information for an ad. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * policyTopicEntries


=item * reviewState


=item * denormalizedStatus


=item * combinedApprovalStatus




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

