package Google::Ads::AdWords::v201609::EnumValuePair;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201609' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %enumValue_of :ATTR(:get<enumValue>);
my %enumDisplayValue_of :ATTR(:get<enumDisplayValue>);

__PACKAGE__->_factory(
    [ qw(        enumValue
        enumDisplayValue

    ) ],
    {
        'enumValue' => \%enumValue_of,
        'enumDisplayValue' => \%enumDisplayValue_of,
    },
    {
        'enumValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'enumDisplayValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'enumValue' => 'enumValue',
        'enumDisplayValue' => 'enumDisplayValue',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201609::EnumValuePair

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
EnumValuePair from the namespace https://adwords.google.com/api/adwords/cm/v201609.

Represents information about enum values. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * enumValue


=item * enumDisplayValue




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

