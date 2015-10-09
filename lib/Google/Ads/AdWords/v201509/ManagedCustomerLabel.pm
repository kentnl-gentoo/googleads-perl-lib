package Google::Ads::AdWords::v201509::ManagedCustomerLabel;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/mcm/v201509' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %labelId_of :ATTR(:get<labelId>);
my %customerId_of :ATTR(:get<customerId>);

__PACKAGE__->_factory(
    [ qw(        labelId
        customerId

    ) ],
    {
        'labelId' => \%labelId_of,
        'customerId' => \%customerId_of,
    },
    {
        'labelId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'customerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'labelId' => 'labelId',
        'customerId' => 'customerId',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201509::ManagedCustomerLabel

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ManagedCustomerLabel from the namespace https://adwords.google.com/api/adwords/mcm/v201509.

A label ID and customer ID the label applies to. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * labelId


=item * customerId




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

