package Google::Ads::AdWords::v201609::AdGroupEstimate;
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
my %adGroupId_of :ATTR(:get<adGroupId>);
my %keywordEstimates_of :ATTR(:get<keywordEstimates>);

__PACKAGE__->_factory(
    [ qw(        Estimate__Type
        adGroupId
        keywordEstimates

    ) ],
    {
        'Estimate__Type' => \%Estimate__Type_of,
        'adGroupId' => \%adGroupId_of,
        'keywordEstimates' => \%keywordEstimates_of,
    },
    {
        'Estimate__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'adGroupId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'keywordEstimates' => 'Google::Ads::AdWords::v201609::KeywordEstimate',
    },
    {

        'Estimate__Type' => 'Estimate.Type',
        'adGroupId' => 'adGroupId',
        'keywordEstimates' => 'keywordEstimates',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201609::AdGroupEstimate

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdGroupEstimate from the namespace https://adwords.google.com/api/adwords/o/v201609.

Represents the estimate results for a single ad group. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * adGroupId


=item * keywordEstimates




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

