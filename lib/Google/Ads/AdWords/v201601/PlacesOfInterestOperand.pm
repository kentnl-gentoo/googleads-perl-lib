package Google::Ads::AdWords::v201601::PlacesOfInterestOperand;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201601' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201601::FunctionArgumentOperand);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %FunctionArgumentOperand__Type_of :ATTR(:get<FunctionArgumentOperand__Type>);
my %category_of :ATTR(:get<category>);

__PACKAGE__->_factory(
    [ qw(        FunctionArgumentOperand__Type
        category

    ) ],
    {
        'FunctionArgumentOperand__Type' => \%FunctionArgumentOperand__Type_of,
        'category' => \%category_of,
    },
    {
        'FunctionArgumentOperand__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'category' => 'Google::Ads::AdWords::v201601::PlacesOfInterestOperand::Category',
    },
    {

        'FunctionArgumentOperand__Type' => 'FunctionArgumentOperand.Type',
        'category' => 'category',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201601::PlacesOfInterestOperand

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PlacesOfInterestOperand from the namespace https://adwords.google.com/api/adwords/cm/v201601.

This operand specifies a place of interest category for semantic targeting. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * category




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

