package Google::Ads::AdWords::v201708::AdGroupAd;
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

my %adGroupId_of :ATTR(:get<adGroupId>);
my %ad_of :ATTR(:get<ad>);
my %status_of :ATTR(:get<status>);
my %policySummary_of :ATTR(:get<policySummary>);
my %labels_of :ATTR(:get<labels>);
my %baseCampaignId_of :ATTR(:get<baseCampaignId>);
my %baseAdGroupId_of :ATTR(:get<baseAdGroupId>);
my %forwardCompatibilityMap_of :ATTR(:get<forwardCompatibilityMap>);

__PACKAGE__->_factory(
    [ qw(        adGroupId
        ad
        status
        policySummary
        labels
        baseCampaignId
        baseAdGroupId
        forwardCompatibilityMap

    ) ],
    {
        'adGroupId' => \%adGroupId_of,
        'ad' => \%ad_of,
        'status' => \%status_of,
        'policySummary' => \%policySummary_of,
        'labels' => \%labels_of,
        'baseCampaignId' => \%baseCampaignId_of,
        'baseAdGroupId' => \%baseAdGroupId_of,
        'forwardCompatibilityMap' => \%forwardCompatibilityMap_of,
    },
    {
        'adGroupId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'ad' => 'Google::Ads::AdWords::v201708::Ad',
        'status' => 'Google::Ads::AdWords::v201708::AdGroupAd::Status',
        'policySummary' => 'Google::Ads::AdWords::v201708::AdGroupAdPolicySummary',
        'labels' => 'Google::Ads::AdWords::v201708::Label',
        'baseCampaignId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'baseAdGroupId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'forwardCompatibilityMap' => 'Google::Ads::AdWords::v201708::String_StringMapEntry',
    },
    {

        'adGroupId' => 'adGroupId',
        'ad' => 'ad',
        'status' => 'status',
        'policySummary' => 'policySummary',
        'labels' => 'labels',
        'baseCampaignId' => 'baseCampaignId',
        'baseAdGroupId' => 'baseAdGroupId',
        'forwardCompatibilityMap' => 'forwardCompatibilityMap',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201708::AdGroupAd

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdGroupAd from the namespace https://adwords.google.com/api/adwords/cm/v201708.

Represents an ad in an ad group. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * adGroupId


=item * ad


=item * status


=item * policySummary


=item * labels


=item * baseCampaignId


=item * baseAdGroupId


=item * forwardCompatibilityMap




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

