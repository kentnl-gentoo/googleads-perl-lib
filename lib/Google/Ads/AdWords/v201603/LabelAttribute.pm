package Google::Ads::AdWords::v201603::LabelAttribute;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201603' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %LabelAttribute__Type_of :ATTR(:get<LabelAttribute__Type>);

__PACKAGE__->_factory(
    [ qw(        LabelAttribute__Type

    ) ],
    {
        'LabelAttribute__Type' => \%LabelAttribute__Type_of,
    },
    {
        'LabelAttribute__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'LabelAttribute__Type' => 'LabelAttribute.Type',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201603::LabelAttribute

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
LabelAttribute from the namespace https://adwords.google.com/api/adwords/cm/v201603.

Base type for AdWords label attributes. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * LabelAttribute__Type

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 LabelAttribute.Type




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

