package Google::Ads::AdWords::v201502::OrderBy;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201502' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %field_of :ATTR(:get<field>);
my %sortOrder_of :ATTR(:get<sortOrder>);

__PACKAGE__->_factory(
    [ qw(        field
        sortOrder

    ) ],
    {
        'field' => \%field_of,
        'sortOrder' => \%sortOrder_of,
    },
    {
        'field' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'sortOrder' => 'Google::Ads::AdWords::v201502::SortOrder',
    },
    {

        'field' => 'field',
        'sortOrder' => 'sortOrder',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::OrderBy

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
OrderBy from the namespace https://adwords.google.com/api/adwords/cm/v201502.

Specifies how the resulting information should be sorted. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * field


=item * sortOrder




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut
