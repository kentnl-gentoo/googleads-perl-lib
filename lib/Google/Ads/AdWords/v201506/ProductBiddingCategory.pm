package Google::Ads::AdWords::v201506::ProductBiddingCategory;
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
my %type_of :ATTR(:get<type>);
my %value_of :ATTR(:get<value>);

__PACKAGE__->_factory(
    [ qw(        ProductDimension__Type
        type
        value

    ) ],
    {
        'ProductDimension__Type' => \%ProductDimension__Type_of,
        'type' => \%type_of,
        'value' => \%value_of,
    },
    {
        'ProductDimension__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'type' => 'Google::Ads::AdWords::v201506::ProductDimensionType',
        'value' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'ProductDimension__Type' => 'ProductDimension.Type',
        'type' => 'type',
        'value' => 'value',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::ProductBiddingCategory

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ProductBiddingCategory from the namespace https://adwords.google.com/api/adwords/cm/v201506.

One element of a bidding category at a certain level. Top-level categories are at level 1, their children at level 2, and so on. We currently support up to 5 levels. The user must specify a dimension type that indicates the level of the category. All cases of the the same subdivision must have the same dimension type (category level). 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * type


=item * value




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

