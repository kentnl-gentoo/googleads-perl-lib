package Google::Ads::AdWords::v201705::String_StringMapEntry;
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

my %key_of :ATTR(:get<key>);
my %value_of :ATTR(:get<value>);

__PACKAGE__->_factory(
    [ qw(        key
        value

    ) ],
    {
        'key' => \%key_of,
        'value' => \%value_of,
    },
    {
        'key' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'value' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'key' => 'key',
        'value' => 'value',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201705::String_StringMapEntry

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
String_StringMapEntry from the namespace https://adwords.google.com/api/adwords/cm/v201705.

This represents an entry in a map with a key of type String and value of type String. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * key


=item * value




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

