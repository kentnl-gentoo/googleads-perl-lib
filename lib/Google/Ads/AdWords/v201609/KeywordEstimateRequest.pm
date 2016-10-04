package Google::Ads::AdWords::v201609::KeywordEstimateRequest;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/o/v201609' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201609::EstimateRequest);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %EstimateRequest__Type_of :ATTR(:get<EstimateRequest__Type>);
my %keyword_of :ATTR(:get<keyword>);
my %maxCpc_of :ATTR(:get<maxCpc>);
my %isNegative_of :ATTR(:get<isNegative>);

__PACKAGE__->_factory(
    [ qw(        EstimateRequest__Type
        keyword
        maxCpc
        isNegative

    ) ],
    {
        'EstimateRequest__Type' => \%EstimateRequest__Type_of,
        'keyword' => \%keyword_of,
        'maxCpc' => \%maxCpc_of,
        'isNegative' => \%isNegative_of,
    },
    {
        'EstimateRequest__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'keyword' => 'Google::Ads::AdWords::v201609::Keyword',
        'maxCpc' => 'Google::Ads::AdWords::v201609::Money',
        'isNegative' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'EstimateRequest__Type' => 'EstimateRequest.Type',
        'keyword' => 'keyword',
        'maxCpc' => 'maxCpc',
        'isNegative' => 'isNegative',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201609::KeywordEstimateRequest

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
KeywordEstimateRequest from the namespace https://adwords.google.com/api/adwords/o/v201609.

Represents a keyword to be estimated. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * keyword


=item * maxCpc


=item * isNegative




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

