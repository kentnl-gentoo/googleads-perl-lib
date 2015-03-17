package Google::Ads::AdWords::v201502::ProductChannelExclusivity;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201502' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201502::ProductDimension);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %ProductDimension__Type_of :ATTR(:get<ProductDimension__Type>);
my %channelExclusivity_of :ATTR(:get<channelExclusivity>);

__PACKAGE__->_factory(
    [ qw(        ProductDimension__Type
        channelExclusivity

    ) ],
    {
        'ProductDimension__Type' => \%ProductDimension__Type_of,
        'channelExclusivity' => \%channelExclusivity_of,
    },
    {
        'ProductDimension__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'channelExclusivity' => 'Google::Ads::AdWords::v201502::ShoppingProductChannelExclusivity',
    },
    {

        'ProductDimension__Type' => 'ProductDimension.Type',
        'channelExclusivity' => 'channelExclusivity',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::ProductChannelExclusivity

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ProductChannelExclusivity from the namespace https://adwords.google.com/api/adwords/cm/v201502.

The product channel exclusivity dimension, which limits the availability of an offer between only local, only online, or both. Only supported by campaigns of {@link AdvertisingChannelType#SHOPPING}. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * channelExclusivity




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

