package Google::Ads::AdWords::v201705::ManagedCustomerLabelReturnValue;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/mcm/v201705' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %value_of :ATTR(:get<value>);

__PACKAGE__->_factory(
    [ qw(        value

    ) ],
    {
        'value' => \%value_of,
    },
    {
        'value' => 'Google::Ads::AdWords::v201705::ManagedCustomerLabel',
    },
    {

        'value' => 'value',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201705::ManagedCustomerLabelReturnValue

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ManagedCustomerLabelReturnValue from the namespace https://adwords.google.com/api/adwords/mcm/v201705.

A container for return values from {@link ManagedCustomerService#mutateLabel}. <p>For successful {@linkplain ADD} operations, the input {@linkplain ManagedCustomerLabel} is returned. <p>For successful {@linkplain REMOVE} operations, the returned {@linkplain ManagedCustomerLabel} will contain the customer ID and a null label ID. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * value




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut
