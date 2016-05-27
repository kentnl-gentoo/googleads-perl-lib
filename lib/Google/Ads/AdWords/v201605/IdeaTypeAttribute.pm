package Google::Ads::AdWords::v201605::IdeaTypeAttribute;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/o/v201605' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201605::Attribute);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %Attribute__Type_of :ATTR(:get<Attribute__Type>);
my %value_of :ATTR(:get<value>);

__PACKAGE__->_factory(
    [ qw(        Attribute__Type
        value

    ) ],
    {
        'Attribute__Type' => \%Attribute__Type_of,
        'value' => \%value_of,
    },
    {
        'Attribute__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'value' => 'Google::Ads::AdWords::v201605::IdeaType',
    },
    {

        'Attribute__Type' => 'Attribute.Type',
        'value' => 'value',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201605::IdeaTypeAttribute

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
IdeaTypeAttribute from the namespace https://adwords.google.com/api/adwords/o/v201605.

{@link Attribute} type that contains an {@link IdeaType} value. For example, if a {@link TargetingIdea} represents a keyword idea, its {@link IdeaTypeAttribute} would contain a {@code KEYWORD} {@link IdeaType}. 




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

