
package Google::Ads::AdWords::v201601::AccountLabelService::get;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'https://adwords.google.com/api/adwords/mcm/v201601' }

__PACKAGE__->__set_name('get');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    Google::Ads::SOAP::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %selector_of :ATTR(:get<selector>);

__PACKAGE__->_factory(
    [ qw(        selector

    ) ],
    {
        'selector' => \%selector_of,
    },
    {
        'selector' => 'Google::Ads::AdWords::v201601::Selector',
    },
    {

        'selector' => 'selector',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

Google::Ads::AdWords::v201601::AccountLabelService::get

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
get from the namespace https://adwords.google.com/api/adwords/mcm/v201601.

Returns a list of labels specified by the selector for the authenticated user. @param selector filters the list of labels to return @return response containing lists of labels that meet all the criteria of the selector @throws ApiException if a problem occurs fetching the information requested 





=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * selector

 $element->set_selector($data);
 $element->get_selector();





=back


=head1 METHODS

=head2 new

 my $element = Google::Ads::AdWords::v201601::AccountLabelService::get->new($data);

Constructor. The following data structure may be passed to new():

 {
   selector =>  $a_reference_to, # see Google::Ads::AdWords::v201601::Selector
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

