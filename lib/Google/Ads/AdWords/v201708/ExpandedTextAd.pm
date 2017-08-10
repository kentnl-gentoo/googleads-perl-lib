package Google::Ads::AdWords::v201708::ExpandedTextAd;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201708' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201708::Ad);
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
my %urlData_of :ATTR(:get<urlData>);
my %type_of :ATTR(:get<type>);
my %devicePreference_of :ATTR(:get<devicePreference>);
my %Ad__Type_of :ATTR(:get<Ad__Type>);
my %headlinePart1_of :ATTR(:get<headlinePart1>);
my %headlinePart2_of :ATTR(:get<headlinePart2>);
my %description_of :ATTR(:get<description>);
my %path1_of :ATTR(:get<path1>);
my %path2_of :ATTR(:get<path2>);

__PACKAGE__->_factory(
    [ qw(        id
        url
        displayUrl
        finalUrls
        finalMobileUrls
        finalAppUrls
        trackingUrlTemplate
        urlCustomParameters
        urlData
        type
        devicePreference
        Ad__Type
        headlinePart1
        headlinePart2
        description
        path1
        path2

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
        'urlData' => \%urlData_of,
        'type' => \%type_of,
        'devicePreference' => \%devicePreference_of,
        'Ad__Type' => \%Ad__Type_of,
        'headlinePart1' => \%headlinePart1_of,
        'headlinePart2' => \%headlinePart2_of,
        'description' => \%description_of,
        'path1' => \%path1_of,
        'path2' => \%path2_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'url' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'displayUrl' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'finalUrls' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'finalMobileUrls' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'finalAppUrls' => 'Google::Ads::AdWords::v201708::AppUrl',
        'trackingUrlTemplate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'urlCustomParameters' => 'Google::Ads::AdWords::v201708::CustomParameters',
        'urlData' => 'Google::Ads::AdWords::v201708::UrlData',
        'type' => 'Google::Ads::AdWords::v201708::Ad::Type',
        'devicePreference' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'Ad__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'headlinePart1' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'headlinePart2' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'description' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'path1' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'path2' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
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
        'urlData' => 'urlData',
        'type' => 'type',
        'devicePreference' => 'devicePreference',
        'Ad__Type' => 'Ad.Type',
        'headlinePart1' => 'headlinePart1',
        'headlinePart2' => 'headlinePart2',
        'description' => 'description',
        'path1' => 'path1',
        'path2' => 'path2',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201708::ExpandedTextAd

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ExpandedTextAd from the namespace https://adwords.google.com/api/adwords/cm/v201708.

Enhanced text ad format. <p class="caution"><b>Caution:</b> Expanded text ads do not use {@link #url url}, {@link #displayUrl displayUrl}, {@link #finalAppUrls finalAppUrls}, or {@link #devicePreference devicePreference}; setting these fields on an expanded text ad will cause an error. <span class="constraint AdxEnabled">This is enabled for AdX.</span> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * headlinePart1


=item * headlinePart2


=item * description


=item * path1


=item * path2




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

