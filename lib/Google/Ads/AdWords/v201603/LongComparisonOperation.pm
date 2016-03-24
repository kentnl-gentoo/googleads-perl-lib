package Google::Ads::AdWords::v201603::LongComparisonOperation;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/o/v201603' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %minimum_of :ATTR(:get<minimum>);
my %maximum_of :ATTR(:get<maximum>);

__PACKAGE__->_factory(
    [ qw(        minimum
        maximum

    ) ],
    {
        'minimum' => \%minimum_of,
        'maximum' => \%maximum_of,
    },
    {
        'minimum' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'maximum' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'minimum' => 'minimum',
        'maximum' => 'maximum',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201603::LongComparisonOperation

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
LongComparisonOperation from the namespace https://adwords.google.com/api/adwords/o/v201603.

Object representing integer comparison operations. This is usually used within a particular {@link com.google.ads.api.services.targetingideas.search.SearchParameter} to specify the valid values requested for the specific {@link com.google.ads.api.services.common.optimization.attributes.Attribute}. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * minimum


=item * maximum




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

