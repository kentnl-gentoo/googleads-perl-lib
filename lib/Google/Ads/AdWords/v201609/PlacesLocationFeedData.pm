package Google::Ads::AdWords::v201609::PlacesLocationFeedData;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201609' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201609::SystemFeedGenerationData);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %SystemFeedGenerationData__Type_of :ATTR(:get<SystemFeedGenerationData__Type>);
my %oAuthInfo_of :ATTR(:get<oAuthInfo>);
my %emailAddress_of :ATTR(:get<emailAddress>);
my %businessAccountIdentifier_of :ATTR(:get<businessAccountIdentifier>);
my %businessNameFilter_of :ATTR(:get<businessNameFilter>);
my %categoryFilters_of :ATTR(:get<categoryFilters>);
my %labelFilters_of :ATTR(:get<labelFilters>);

__PACKAGE__->_factory(
    [ qw(        SystemFeedGenerationData__Type
        oAuthInfo
        emailAddress
        businessAccountIdentifier
        businessNameFilter
        categoryFilters
        labelFilters

    ) ],
    {
        'SystemFeedGenerationData__Type' => \%SystemFeedGenerationData__Type_of,
        'oAuthInfo' => \%oAuthInfo_of,
        'emailAddress' => \%emailAddress_of,
        'businessAccountIdentifier' => \%businessAccountIdentifier_of,
        'businessNameFilter' => \%businessNameFilter_of,
        'categoryFilters' => \%categoryFilters_of,
        'labelFilters' => \%labelFilters_of,
    },
    {
        'SystemFeedGenerationData__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'oAuthInfo' => 'Google::Ads::AdWords::v201609::OAuthInfo',
        'emailAddress' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'businessAccountIdentifier' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'businessNameFilter' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'categoryFilters' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'labelFilters' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'SystemFeedGenerationData__Type' => 'SystemFeedGenerationData.Type',
        'oAuthInfo' => 'oAuthInfo',
        'emailAddress' => 'emailAddress',
        'businessAccountIdentifier' => 'businessAccountIdentifier',
        'businessNameFilter' => 'businessNameFilter',
        'categoryFilters' => 'categoryFilters',
        'labelFilters' => 'labelFilters',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201609::PlacesLocationFeedData

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PlacesLocationFeedData from the namespace https://adwords.google.com/api/adwords/cm/v201609.

Data used to configure a location feed populated from Google My Business Locations. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * oAuthInfo


=item * emailAddress


=item * businessAccountIdentifier


=item * businessNameFilter


=item * categoryFilters


=item * labelFilters




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

