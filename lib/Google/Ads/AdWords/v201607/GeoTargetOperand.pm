package Google::Ads::AdWords::v201607::GeoTargetOperand;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201607' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201607::FunctionArgumentOperand);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %FunctionArgumentOperand__Type_of :ATTR(:get<FunctionArgumentOperand__Type>);
my %locations_of :ATTR(:get<locations>);

__PACKAGE__->_factory(
    [ qw(        FunctionArgumentOperand__Type
        locations

    ) ],
    {
        'FunctionArgumentOperand__Type' => \%FunctionArgumentOperand__Type_of,
        'locations' => \%locations_of,
    },
    {
        'FunctionArgumentOperand__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'locations' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'FunctionArgumentOperand__Type' => 'FunctionArgumentOperand.Type',
        'locations' => 'locations',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201607::GeoTargetOperand

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
GeoTargetOperand from the namespace https://adwords.google.com/api/adwords/cm/v201607.

Represents an operand containing geo information, specifying the scope of the geographical area. Currently, geo targets are restricted to a single criterion id per operand. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * locations




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

