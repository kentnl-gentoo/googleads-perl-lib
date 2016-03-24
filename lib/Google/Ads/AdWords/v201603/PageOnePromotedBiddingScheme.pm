package Google::Ads::AdWords::v201603::PageOnePromotedBiddingScheme;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201603' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201603::BiddingScheme);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %BiddingScheme__Type_of :ATTR(:get<BiddingScheme__Type>);
my %strategyGoal_of :ATTR(:get<strategyGoal>);
my %bidCeiling_of :ATTR(:get<bidCeiling>);
my %bidModifier_of :ATTR(:get<bidModifier>);
my %bidChangesForRaisesOnly_of :ATTR(:get<bidChangesForRaisesOnly>);
my %raiseBidWhenBudgetConstrained_of :ATTR(:get<raiseBidWhenBudgetConstrained>);
my %raiseBidWhenLowQualityScore_of :ATTR(:get<raiseBidWhenLowQualityScore>);

__PACKAGE__->_factory(
    [ qw(        BiddingScheme__Type
        strategyGoal
        bidCeiling
        bidModifier
        bidChangesForRaisesOnly
        raiseBidWhenBudgetConstrained
        raiseBidWhenLowQualityScore

    ) ],
    {
        'BiddingScheme__Type' => \%BiddingScheme__Type_of,
        'strategyGoal' => \%strategyGoal_of,
        'bidCeiling' => \%bidCeiling_of,
        'bidModifier' => \%bidModifier_of,
        'bidChangesForRaisesOnly' => \%bidChangesForRaisesOnly_of,
        'raiseBidWhenBudgetConstrained' => \%raiseBidWhenBudgetConstrained_of,
        'raiseBidWhenLowQualityScore' => \%raiseBidWhenLowQualityScore_of,
    },
    {
        'BiddingScheme__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'strategyGoal' => 'Google::Ads::AdWords::v201603::PageOnePromotedBiddingScheme::StrategyGoal',
        'bidCeiling' => 'Google::Ads::AdWords::v201603::Money',
        'bidModifier' => 'SOAP::WSDL::XSD::Typelib::Builtin::double',
        'bidChangesForRaisesOnly' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'raiseBidWhenBudgetConstrained' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'raiseBidWhenLowQualityScore' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'BiddingScheme__Type' => 'BiddingScheme.Type',
        'strategyGoal' => 'strategyGoal',
        'bidCeiling' => 'bidCeiling',
        'bidModifier' => 'bidModifier',
        'bidChangesForRaisesOnly' => 'bidChangesForRaisesOnly',
        'raiseBidWhenBudgetConstrained' => 'raiseBidWhenBudgetConstrained',
        'raiseBidWhenLowQualityScore' => 'raiseBidWhenLowQualityScore',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201603::PageOnePromotedBiddingScheme

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PageOnePromotedBiddingScheme from the namespace https://adwords.google.com/api/adwords/cm/v201603.

Page-One Promoted bidding scheme, which sets max cpc bids to target impressions on page one or page one promoted slots on google.com. <span class="constraint AdxEnabled">This is disabled for AdX.</span> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * strategyGoal


=item * bidCeiling


=item * bidModifier


=item * bidChangesForRaisesOnly


=item * raiseBidWhenBudgetConstrained


=item * raiseBidWhenLowQualityScore




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

