package Google::Ads::AdWords::v201710::FeedItemAttributeValue;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201710' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %feedAttributeId_of :ATTR(:get<feedAttributeId>);
my %integerValue_of :ATTR(:get<integerValue>);
my %doubleValue_of :ATTR(:get<doubleValue>);
my %booleanValue_of :ATTR(:get<booleanValue>);
my %stringValue_of :ATTR(:get<stringValue>);
my %integerValues_of :ATTR(:get<integerValues>);
my %doubleValues_of :ATTR(:get<doubleValues>);
my %booleanValues_of :ATTR(:get<booleanValues>);
my %stringValues_of :ATTR(:get<stringValues>);
my %moneyWithCurrencyValue_of :ATTR(:get<moneyWithCurrencyValue>);

__PACKAGE__->_factory(
    [ qw(        feedAttributeId
        integerValue
        doubleValue
        booleanValue
        stringValue
        integerValues
        doubleValues
        booleanValues
        stringValues
        moneyWithCurrencyValue

    ) ],
    {
        'feedAttributeId' => \%feedAttributeId_of,
        'integerValue' => \%integerValue_of,
        'doubleValue' => \%doubleValue_of,
        'booleanValue' => \%booleanValue_of,
        'stringValue' => \%stringValue_of,
        'integerValues' => \%integerValues_of,
        'doubleValues' => \%doubleValues_of,
        'booleanValues' => \%booleanValues_of,
        'stringValues' => \%stringValues_of,
        'moneyWithCurrencyValue' => \%moneyWithCurrencyValue_of,
    },
    {
        'feedAttributeId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'integerValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'doubleValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::double',
        'booleanValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'stringValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'integerValues' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'doubleValues' => 'SOAP::WSDL::XSD::Typelib::Builtin::double',
        'booleanValues' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'stringValues' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'moneyWithCurrencyValue' => 'Google::Ads::AdWords::v201710::MoneyWithCurrency',
    },
    {

        'feedAttributeId' => 'feedAttributeId',
        'integerValue' => 'integerValue',
        'doubleValue' => 'doubleValue',
        'booleanValue' => 'booleanValue',
        'stringValue' => 'stringValue',
        'integerValues' => 'integerValues',
        'doubleValues' => 'doubleValues',
        'booleanValues' => 'booleanValues',
        'stringValues' => 'stringValues',
        'moneyWithCurrencyValue' => 'moneyWithCurrencyValue',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201710::FeedItemAttributeValue

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
FeedItemAttributeValue from the namespace https://adwords.google.com/api/adwords/cm/v201710.

Represents a feed item's value for a particular feed attribute. A feed item's value is composed of a collection of these attribute values. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * feedAttributeId


=item * integerValue


=item * doubleValue


=item * booleanValue


=item * stringValue


=item * integerValues


=item * doubleValues


=item * booleanValues


=item * stringValues


=item * moneyWithCurrencyValue




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

