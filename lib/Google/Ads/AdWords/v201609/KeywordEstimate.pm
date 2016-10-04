package Google::Ads::AdWords::v201609::KeywordEstimate;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/o/v201609' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201609::Estimate);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %Estimate__Type_of :ATTR(:get<Estimate__Type>);
my %criterionId_of :ATTR(:get<criterionId>);
my %min_of :ATTR(:get<min>);
my %max_of :ATTR(:get<max>);

__PACKAGE__->_factory(
    [ qw(        Estimate__Type
        criterionId
        min
        max

    ) ],
    {
        'Estimate__Type' => \%Estimate__Type_of,
        'criterionId' => \%criterionId_of,
        'min' => \%min_of,
        'max' => \%max_of,
    },
    {
        'Estimate__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'criterionId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'min' => 'Google::Ads::AdWords::v201609::StatsEstimate',
        'max' => 'Google::Ads::AdWords::v201609::StatsEstimate',
    },
    {

        'Estimate__Type' => 'Estimate.Type',
        'criterionId' => 'criterionId',
        'min' => 'min',
        'max' => 'max',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201609::KeywordEstimate

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
KeywordEstimate from the namespace https://adwords.google.com/api/adwords/o/v201609.

Represents the traffic estimate result for a single keyword. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * criterionId


=item * min


=item * max




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

