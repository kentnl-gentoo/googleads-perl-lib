package Google::Ads::AdWords::v201702::AttributeFieldMapping;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201702' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %feedAttributeId_of :ATTR(:get<feedAttributeId>);
my %fieldId_of :ATTR(:get<fieldId>);

__PACKAGE__->_factory(
    [ qw(        feedAttributeId
        fieldId

    ) ],
    {
        'feedAttributeId' => \%feedAttributeId_of,
        'fieldId' => \%fieldId_of,
    },
    {
        'feedAttributeId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'fieldId' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'feedAttributeId' => 'feedAttributeId',
        'fieldId' => 'fieldId',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201702::AttributeFieldMapping

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AttributeFieldMapping from the namespace https://adwords.google.com/api/adwords/cm/v201702.

Represents a mapping between a feed attribute and a placeholder field. <p>For a list of feed placeholders, see <a href="/adwords/api/docs/appendix/placeholders"> https://developers.google.com/adwords/api/docs/appendix/placeholders </a></p> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * feedAttributeId


=item * fieldId




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

