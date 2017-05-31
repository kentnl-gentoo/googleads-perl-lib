package Google::Ads::AdWords::v201705::PriceTableRow;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201705' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %header_of :ATTR(:get<header>);
my %description_of :ATTR(:get<description>);
my %finalUrls_of :ATTR(:get<finalUrls>);
my %finalMobileUrls_of :ATTR(:get<finalMobileUrls>);
my %price_of :ATTR(:get<price>);
my %priceUnit_of :ATTR(:get<priceUnit>);

__PACKAGE__->_factory(
    [ qw(        header
        description
        finalUrls
        finalMobileUrls
        price
        priceUnit

    ) ],
    {
        'header' => \%header_of,
        'description' => \%description_of,
        'finalUrls' => \%finalUrls_of,
        'finalMobileUrls' => \%finalMobileUrls_of,
        'price' => \%price_of,
        'priceUnit' => \%priceUnit_of,
    },
    {
        'header' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'description' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'finalUrls' => 'Google::Ads::AdWords::v201705::UrlList',
        'finalMobileUrls' => 'Google::Ads::AdWords::v201705::UrlList',
        'price' => 'Google::Ads::AdWords::v201705::MoneyWithCurrency',
        'priceUnit' => 'Google::Ads::AdWords::v201705::PriceExtensionPriceUnit',
    },
    {

        'header' => 'header',
        'description' => 'description',
        'finalUrls' => 'finalUrls',
        'finalMobileUrls' => 'finalMobileUrls',
        'price' => 'price',
        'priceUnit' => 'priceUnit',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201705::PriceTableRow

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PriceTableRow from the namespace https://adwords.google.com/api/adwords/cm/v201705.

Represents one row in a price extension. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * header


=item * description


=item * finalUrls


=item * finalMobileUrls


=item * price


=item * priceUnit




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

