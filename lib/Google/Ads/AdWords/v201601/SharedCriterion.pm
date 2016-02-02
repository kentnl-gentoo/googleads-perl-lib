package Google::Ads::AdWords::v201601::SharedCriterion;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201601' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %sharedSetId_of :ATTR(:get<sharedSetId>);
my %criterion_of :ATTR(:get<criterion>);
my %negative_of :ATTR(:get<negative>);

__PACKAGE__->_factory(
    [ qw(        sharedSetId
        criterion
        negative

    ) ],
    {
        'sharedSetId' => \%sharedSetId_of,
        'criterion' => \%criterion_of,
        'negative' => \%negative_of,
    },
    {
        'sharedSetId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'criterion' => 'Google::Ads::AdWords::v201601::Criterion',
        'negative' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'sharedSetId' => 'sharedSetId',
        'criterion' => 'criterion',
        'negative' => 'negative',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201601::SharedCriterion

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SharedCriterion from the namespace https://adwords.google.com/api/adwords/cm/v201601.

Represents a criterion belonging to a shared set. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * sharedSetId


=item * criterion


=item * negative




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

