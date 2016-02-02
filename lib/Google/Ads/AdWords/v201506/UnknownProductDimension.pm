package Google::Ads::AdWords::v201506::UnknownProductDimension;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201506::ProductDimension);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %ProductDimension__Type_of :ATTR(:get<ProductDimension__Type>);

__PACKAGE__->_factory(
    [ qw(        ProductDimension__Type

    ) ],
    {
        'ProductDimension__Type' => \%ProductDimension__Type_of,
    },
    {
        'ProductDimension__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'ProductDimension__Type' => 'ProductDimension.Type',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::UnknownProductDimension

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
UnknownProductDimension from the namespace https://adwords.google.com/api/adwords/cm/v201506.

An unknown product dimension type which will be returned in place of any ProductDimension not supported by the clients current API version. 




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

