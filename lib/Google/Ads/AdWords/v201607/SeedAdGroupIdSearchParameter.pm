package Google::Ads::AdWords::v201607::SeedAdGroupIdSearchParameter;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/o/v201607' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201607::SearchParameter);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %SearchParameter__Type_of :ATTR(:get<SearchParameter__Type>);
my %adGroupId_of :ATTR(:get<adGroupId>);

__PACKAGE__->_factory(
    [ qw(        SearchParameter__Type
        adGroupId

    ) ],
    {
        'SearchParameter__Type' => \%SearchParameter__Type_of,
        'adGroupId' => \%adGroupId_of,
    },
    {
        'SearchParameter__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'adGroupId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'SearchParameter__Type' => 'SearchParameter.Type',
        'adGroupId' => 'adGroupId',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201607::SeedAdGroupIdSearchParameter

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SeedAdGroupIdSearchParameter from the namespace https://adwords.google.com/api/adwords/o/v201607.

A {@link SearchParameter} for {@code KEYWORD} {@link IdeaType}s that specifies that the supplied AdGroup should be used as a seed for generating new ideas. For example, an AdGroup's keywords would be used to generate new and related keywords. <p>This element is supported by following {@link IdeaType}s: KEYWORD. <p>This element is supported by following {@link RequestType}s: IDEAS. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * adGroupId




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

