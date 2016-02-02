package Google::Ads::AdWords::v201601::RichMediaAd;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201601' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201601::Ad);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %id_of :ATTR(:get<id>);
my %url_of :ATTR(:get<url>);
my %displayUrl_of :ATTR(:get<displayUrl>);
my %finalUrls_of :ATTR(:get<finalUrls>);
my %finalMobileUrls_of :ATTR(:get<finalMobileUrls>);
my %finalAppUrls_of :ATTR(:get<finalAppUrls>);
my %trackingUrlTemplate_of :ATTR(:get<trackingUrlTemplate>);
my %urlCustomParameters_of :ATTR(:get<urlCustomParameters>);
my %type_of :ATTR(:get<type>);
my %devicePreference_of :ATTR(:get<devicePreference>);
my %Ad__Type_of :ATTR(:get<Ad__Type>);
my %name_of :ATTR(:get<name>);
my %dimensions_of :ATTR(:get<dimensions>);
my %snippet_of :ATTR(:get<snippet>);
my %impressionBeaconUrl_of :ATTR(:get<impressionBeaconUrl>);
my %adDuration_of :ATTR(:get<adDuration>);
my %certifiedVendorFormatId_of :ATTR(:get<certifiedVendorFormatId>);
my %sourceUrl_of :ATTR(:get<sourceUrl>);
my %richMediaAdType_of :ATTR(:get<richMediaAdType>);
my %adAttributes_of :ATTR(:get<adAttributes>);

__PACKAGE__->_factory(
    [ qw(        id
        url
        displayUrl
        finalUrls
        finalMobileUrls
        finalAppUrls
        trackingUrlTemplate
        urlCustomParameters
        type
        devicePreference
        Ad__Type
        name
        dimensions
        snippet
        impressionBeaconUrl
        adDuration
        certifiedVendorFormatId
        sourceUrl
        richMediaAdType
        adAttributes

    ) ],
    {
        'id' => \%id_of,
        'url' => \%url_of,
        'displayUrl' => \%displayUrl_of,
        'finalUrls' => \%finalUrls_of,
        'finalMobileUrls' => \%finalMobileUrls_of,
        'finalAppUrls' => \%finalAppUrls_of,
        'trackingUrlTemplate' => \%trackingUrlTemplate_of,
        'urlCustomParameters' => \%urlCustomParameters_of,
        'type' => \%type_of,
        'devicePreference' => \%devicePreference_of,
        'Ad__Type' => \%Ad__Type_of,
        'name' => \%name_of,
        'dimensions' => \%dimensions_of,
        'snippet' => \%snippet_of,
        'impressionBeaconUrl' => \%impressionBeaconUrl_of,
        'adDuration' => \%adDuration_of,
        'certifiedVendorFormatId' => \%certifiedVendorFormatId_of,
        'sourceUrl' => \%sourceUrl_of,
        'richMediaAdType' => \%richMediaAdType_of,
        'adAttributes' => \%adAttributes_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'url' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'displayUrl' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'finalUrls' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'finalMobileUrls' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'finalAppUrls' => 'Google::Ads::AdWords::v201601::AppUrl',
        'trackingUrlTemplate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'urlCustomParameters' => 'Google::Ads::AdWords::v201601::CustomParameters',
        'type' => 'Google::Ads::AdWords::v201601::Ad::Type',
        'devicePreference' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'Ad__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'dimensions' => 'Google::Ads::AdWords::v201601::Dimensions',
        'snippet' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'impressionBeaconUrl' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'adDuration' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'certifiedVendorFormatId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'sourceUrl' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'richMediaAdType' => 'Google::Ads::AdWords::v201601::RichMediaAd::RichMediaAdType',
        'adAttributes' => 'Google::Ads::AdWords::v201601::RichMediaAd::AdAttribute',
    },
    {

        'id' => 'id',
        'url' => 'url',
        'displayUrl' => 'displayUrl',
        'finalUrls' => 'finalUrls',
        'finalMobileUrls' => 'finalMobileUrls',
        'finalAppUrls' => 'finalAppUrls',
        'trackingUrlTemplate' => 'trackingUrlTemplate',
        'urlCustomParameters' => 'urlCustomParameters',
        'type' => 'type',
        'devicePreference' => 'devicePreference',
        'Ad__Type' => 'Ad.Type',
        'name' => 'name',
        'dimensions' => 'dimensions',
        'snippet' => 'snippet',
        'impressionBeaconUrl' => 'impressionBeaconUrl',
        'adDuration' => 'adDuration',
        'certifiedVendorFormatId' => 'certifiedVendorFormatId',
        'sourceUrl' => 'sourceUrl',
        'richMediaAdType' => 'richMediaAdType',
        'adAttributes' => 'adAttributes',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201601::RichMediaAd

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
RichMediaAd from the namespace https://adwords.google.com/api/adwords/cm/v201601.

Data associated with a rich media ad. <span class="constraint AdxEnabled">This is disabled for AdX when it is contained within Operators: ADD, SET.</span> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * name


=item * dimensions


=item * snippet


=item * impressionBeaconUrl


=item * adDuration


=item * certifiedVendorFormatId


=item * sourceUrl


=item * richMediaAdType


=item * adAttributes




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

