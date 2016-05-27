package Google::Ads::AdWords::v201605::ProductChannel;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201605' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201605::ProductDimension);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %ProductDimension__Type_of :ATTR(:get<ProductDimension__Type>);
my %channel_of :ATTR(:get<channel>);

__PACKAGE__->_factory(
    [ qw(        ProductDimension__Type
        channel

    ) ],
    {
        'ProductDimension__Type' => \%ProductDimension__Type_of,
        'channel' => \%channel_of,
    },
    {
        'ProductDimension__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'channel' => 'Google::Ads::AdWords::v201605::ShoppingProductChannel',
    },
    {

        'ProductDimension__Type' => 'ProductDimension.Type',
        'channel' => 'channel',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201605::ProductChannel

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ProductChannel from the namespace https://adwords.google.com/api/adwords/cm/v201605.

The product channel dimension, which specifies the locality of an offer. Only supported by campaigns of {@link AdvertisingChannelType#SHOPPING}. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * channel




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

