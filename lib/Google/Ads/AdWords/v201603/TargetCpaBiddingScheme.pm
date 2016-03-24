package Google::Ads::AdWords::v201603::TargetCpaBiddingScheme;
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
my %targetCpa_of :ATTR(:get<targetCpa>);
my %maxCpcBidCeiling_of :ATTR(:get<maxCpcBidCeiling>);
my %maxCpcBidFloor_of :ATTR(:get<maxCpcBidFloor>);

__PACKAGE__->_factory(
    [ qw(        BiddingScheme__Type
        targetCpa
        maxCpcBidCeiling
        maxCpcBidFloor

    ) ],
    {
        'BiddingScheme__Type' => \%BiddingScheme__Type_of,
        'targetCpa' => \%targetCpa_of,
        'maxCpcBidCeiling' => \%maxCpcBidCeiling_of,
        'maxCpcBidFloor' => \%maxCpcBidFloor_of,
    },
    {
        'BiddingScheme__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'targetCpa' => 'Google::Ads::AdWords::v201603::Money',
        'maxCpcBidCeiling' => 'Google::Ads::AdWords::v201603::Money',
        'maxCpcBidFloor' => 'Google::Ads::AdWords::v201603::Money',
    },
    {

        'BiddingScheme__Type' => 'BiddingScheme.Type',
        'targetCpa' => 'targetCpa',
        'maxCpcBidCeiling' => 'maxCpcBidCeiling',
        'maxCpcBidFloor' => 'maxCpcBidFloor',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201603::TargetCpaBiddingScheme

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
TargetCpaBiddingScheme from the namespace https://adwords.google.com/api/adwords/cm/v201603.

<a href="https://support.google.com/adwords/answer/6268632">Target CPA</a> is an automated bid strategy that sets bids to help get as many conversions as possible at the target cost-per-acquisition (CPA) you set. <p>A {@linkplain #targetCpa target CPA} must be set for the strategy, but can also be optionally set for individual ad groups in the strategy. Ad group targets, if set, will override strategy targets. <p>Note that campaigns must meet <a href="https://support.google.com/adwords/answer/2471188">specific eligibility requirements</a> before they can use the Target CPA bid strategy. <span class="constraint AdxEnabled">This is disabled for AdX.</span> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * targetCpa


=item * maxCpcBidCeiling


=item * maxCpcBidFloor




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

