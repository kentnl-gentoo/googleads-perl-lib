package Google::Ads::AdWords::v201601::PendingInvitationSelector;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/mcm/v201601' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %managerCustomerIds_of :ATTR(:get<managerCustomerIds>);
my %clientCustomerIds_of :ATTR(:get<clientCustomerIds>);

__PACKAGE__->_factory(
    [ qw(        managerCustomerIds
        clientCustomerIds

    ) ],
    {
        'managerCustomerIds' => \%managerCustomerIds_of,
        'clientCustomerIds' => \%clientCustomerIds_of,
    },
    {
        'managerCustomerIds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'clientCustomerIds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'managerCustomerIds' => 'managerCustomerIds',
        'clientCustomerIds' => 'clientCustomerIds',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201601::PendingInvitationSelector

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PendingInvitationSelector from the namespace https://adwords.google.com/api/adwords/mcm/v201601.

Selector for getPendingInvitations method. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * managerCustomerIds


=item * clientCustomerIds




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

