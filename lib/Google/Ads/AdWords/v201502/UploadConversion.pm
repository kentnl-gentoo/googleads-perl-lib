package Google::Ads::AdWords::v201502::UploadConversion;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201502' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201502::ConversionTracker);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %id_of :ATTR(:get<id>);
my %originalConversionTypeId_of :ATTR(:get<originalConversionTypeId>);
my %name_of :ATTR(:get<name>);
my %status_of :ATTR(:get<status>);
my %category_of :ATTR(:get<category>);
my %conversionTypeOwnerCustomerId_of :ATTR(:get<conversionTypeOwnerCustomerId>);
my %stats_of :ATTR(:get<stats>);
my %viewthroughLookbackWindow_of :ATTR(:get<viewthroughLookbackWindow>);
my %isProductAdsChargeable_of :ATTR(:get<isProductAdsChargeable>);
my %productAdsChargeableConversionWindow_of :ATTR(:get<productAdsChargeableConversionWindow>);
my %ctcLookbackWindow_of :ATTR(:get<ctcLookbackWindow>);
my %countingType_of :ATTR(:get<countingType>);
my %defaultRevenueValue_of :ATTR(:get<defaultRevenueValue>);
my %defaultRevenueCurrencyCode_of :ATTR(:get<defaultRevenueCurrencyCode>);
my %alwaysUseDefaultRevenueValue_of :ATTR(:get<alwaysUseDefaultRevenueValue>);
my %excludeFromBidding_of :ATTR(:get<excludeFromBidding>);
my %ConversionTracker__Type_of :ATTR(:get<ConversionTracker__Type>);

__PACKAGE__->_factory(
    [ qw(        id
        originalConversionTypeId
        name
        status
        category
        conversionTypeOwnerCustomerId
        stats
        viewthroughLookbackWindow
        isProductAdsChargeable
        productAdsChargeableConversionWindow
        ctcLookbackWindow
        countingType
        defaultRevenueValue
        defaultRevenueCurrencyCode
        alwaysUseDefaultRevenueValue
        excludeFromBidding
        ConversionTracker__Type

    ) ],
    {
        'id' => \%id_of,
        'originalConversionTypeId' => \%originalConversionTypeId_of,
        'name' => \%name_of,
        'status' => \%status_of,
        'category' => \%category_of,
        'conversionTypeOwnerCustomerId' => \%conversionTypeOwnerCustomerId_of,
        'stats' => \%stats_of,
        'viewthroughLookbackWindow' => \%viewthroughLookbackWindow_of,
        'isProductAdsChargeable' => \%isProductAdsChargeable_of,
        'productAdsChargeableConversionWindow' => \%productAdsChargeableConversionWindow_of,
        'ctcLookbackWindow' => \%ctcLookbackWindow_of,
        'countingType' => \%countingType_of,
        'defaultRevenueValue' => \%defaultRevenueValue_of,
        'defaultRevenueCurrencyCode' => \%defaultRevenueCurrencyCode_of,
        'alwaysUseDefaultRevenueValue' => \%alwaysUseDefaultRevenueValue_of,
        'excludeFromBidding' => \%excludeFromBidding_of,
        'ConversionTracker__Type' => \%ConversionTracker__Type_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'originalConversionTypeId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'status' => 'Google::Ads::AdWords::v201502::ConversionTracker::Status',
        'category' => 'Google::Ads::AdWords::v201502::ConversionTracker::Category',
        'conversionTypeOwnerCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'stats' => 'Google::Ads::AdWords::v201502::ConversionTrackerStats',
        'viewthroughLookbackWindow' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'isProductAdsChargeable' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'productAdsChargeableConversionWindow' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'ctcLookbackWindow' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'countingType' => 'Google::Ads::AdWords::v201502::ConversionDeduplicationMode',
        'defaultRevenueValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::double',
        'defaultRevenueCurrencyCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'alwaysUseDefaultRevenueValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'excludeFromBidding' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'ConversionTracker__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'id' => 'id',
        'originalConversionTypeId' => 'originalConversionTypeId',
        'name' => 'name',
        'status' => 'status',
        'category' => 'category',
        'conversionTypeOwnerCustomerId' => 'conversionTypeOwnerCustomerId',
        'stats' => 'stats',
        'viewthroughLookbackWindow' => 'viewthroughLookbackWindow',
        'isProductAdsChargeable' => 'isProductAdsChargeable',
        'productAdsChargeableConversionWindow' => 'productAdsChargeableConversionWindow',
        'ctcLookbackWindow' => 'ctcLookbackWindow',
        'countingType' => 'countingType',
        'defaultRevenueValue' => 'defaultRevenueValue',
        'defaultRevenueCurrencyCode' => 'defaultRevenueCurrencyCode',
        'alwaysUseDefaultRevenueValue' => 'alwaysUseDefaultRevenueValue',
        'excludeFromBidding' => 'excludeFromBidding',
        'ConversionTracker__Type' => 'ConversionTracker.Type',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::UploadConversion

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
UploadConversion from the namespace https://adwords.google.com/api/adwords/cm/v201502.

A conversion type that receives conversions by having them uploaded through the OfflineConversionFeedService. After successfully creating a new UploadConversion, send the name of this conversion type along with your conversion details to the OfflineConversionFeedService to attribute those conversions to this conversion type. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over



=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

