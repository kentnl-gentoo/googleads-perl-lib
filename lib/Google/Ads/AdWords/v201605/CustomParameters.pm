package Google::Ads::AdWords::v201605::CustomParameters;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201605' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %parameters_of :ATTR(:get<parameters>);
my %doReplace_of :ATTR(:get<doReplace>);

__PACKAGE__->_factory(
    [ qw(        parameters
        doReplace

    ) ],
    {
        'parameters' => \%parameters_of,
        'doReplace' => \%doReplace_of,
    },
    {
        'parameters' => 'Google::Ads::AdWords::v201605::CustomParameter',
        'doReplace' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'parameters' => 'parameters',
        'doReplace' => 'doReplace',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201605::CustomParameters

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CustomParameters from the namespace https://adwords.google.com/api/adwords/cm/v201605.

CustomParameters holds a list of CustomParameters to be treated as a map. It has a special field used to indicate that the current map should be cleared and replaced with this new map. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * parameters


=item * doReplace




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

