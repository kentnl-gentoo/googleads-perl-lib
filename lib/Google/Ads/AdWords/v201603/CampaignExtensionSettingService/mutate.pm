
package Google::Ads::AdWords::v201603::CampaignExtensionSettingService::mutate;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201603' }

__PACKAGE__->__set_name('mutate');
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

my %operations_of :ATTR(:get<operations>);

__PACKAGE__->_factory(
    [ qw(        operations

    ) ],
    {
        'operations' => \%operations_of,
    },
    {
        'operations' => 'Google::Ads::AdWords::v201603::CampaignExtensionSettingOperation',
    },
    {

        'operations' => 'operations',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

Google::Ads::AdWords::v201603::CampaignExtensionSettingService::mutate

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
mutate from the namespace https://adwords.google.com/api/adwords/cm/v201603.

Applies the list of mutate operations (add, remove, and set). <p> Beginning in v201509, add and set operations are treated identically. Performing an add operation on a campaign with an existing ExtensionSetting will cause the operation to be treated like a set operation. Performing a set operation on a campaign with no ExtensionSetting will cause the operation to be treated like an add operation. @param operations The operations to apply. The same {@link CampaignExtensionSetting} cannot be specified in more than one operation. @return The changed {@link CampaignExtensionSetting}s. @throws ApiException Indicates a problem with the request. 





=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * operations

 $element->set_operations($data);
 $element->get_operations();





=back


=head1 METHODS

=head2 new

 my $element = Google::Ads::AdWords::v201603::CampaignExtensionSettingService::mutate->new($data);

Constructor. The following data structure may be passed to new():

 {
   operations =>  $a_reference_to, # see Google::Ads::AdWords::v201603::CampaignExtensionSettingOperation
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

