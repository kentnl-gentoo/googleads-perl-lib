package Google::Ads::AdWords::v201605::TempAdUnionId;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201605' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201605::AdUnionId);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %id_of :ATTR(:get<id>);
my %AdUnionId__Type_of :ATTR(:get<AdUnionId__Type>);

__PACKAGE__->_factory(
    [ qw(        id
        AdUnionId__Type

    ) ],
    {
        'id' => \%id_of,
        'AdUnionId__Type' => \%AdUnionId__Type_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'AdUnionId__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'id' => 'id',
        'AdUnionId__Type' => 'AdUnionId.Type',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201605::TempAdUnionId

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
TempAdUnionId from the namespace https://adwords.google.com/api/adwords/cm/v201605.

Represents the temporary id for an ad union id, which the user can specify. The temporary id can be used to group ads together during ad creation. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over



=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

