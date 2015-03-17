package Google::Ads::AdWords::v201502::Webpage;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201502' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201502::Criterion);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %id_of :ATTR(:get<id>);
my %type_of :ATTR(:get<type>);
my %Criterion__Type_of :ATTR(:get<Criterion__Type>);
my %parameter_of :ATTR(:get<parameter>);
my %criteriaCoverage_of :ATTR(:get<criteriaCoverage>);
my %criteriaSamples_of :ATTR(:get<criteriaSamples>);

__PACKAGE__->_factory(
    [ qw(        id
        type
        Criterion__Type
        parameter
        criteriaCoverage
        criteriaSamples

    ) ],
    {
        'id' => \%id_of,
        'type' => \%type_of,
        'Criterion__Type' => \%Criterion__Type_of,
        'parameter' => \%parameter_of,
        'criteriaCoverage' => \%criteriaCoverage_of,
        'criteriaSamples' => \%criteriaSamples_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'type' => 'Google::Ads::AdWords::v201502::Criterion::Type',
        'Criterion__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'parameter' => 'Google::Ads::AdWords::v201502::WebpageParameter',
        'criteriaCoverage' => 'SOAP::WSDL::XSD::Typelib::Builtin::double',
        'criteriaSamples' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'id' => 'id',
        'type' => 'type',
        'Criterion__Type' => 'Criterion.Type',
        'parameter' => 'parameter',
        'criteriaCoverage' => 'criteriaCoverage',
        'criteriaSamples' => 'criteriaSamples',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::Webpage

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Webpage from the namespace https://adwords.google.com/api/adwords/cm/v201502.

Criterion for targeting webpages of an advertiser's website. The website domain name is specified at the campaign level. <span class="constraint AdxEnabled">This is disabled for AdX when it is contained within Operators: ADD, SET.</span> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * parameter


=item * criteriaCoverage


=item * criteriaSamples




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

