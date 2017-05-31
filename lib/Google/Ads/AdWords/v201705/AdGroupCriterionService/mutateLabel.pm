
package Google::Ads::AdWords::v201705::AdGroupCriterionService::mutateLabel;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201705' }

__PACKAGE__->__set_name('mutateLabel');
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
        'operations' => 'Google::Ads::AdWords::v201705::AdGroupCriterionLabelOperation',
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

Google::Ads::AdWords::v201705::AdGroupCriterionService::mutateLabel

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
mutateLabel from the namespace https://adwords.google.com/api/adwords/cm/v201705.

Adds labels to the AdGroupCriterion or removes labels from the AdGroupCriterion <p>Add - Apply an existing label to an existing {@linkplain AdGroupCriterion ad group criterion}. The {@code adGroupId} and {@code criterionId} must reference an existing {@linkplain AdGroupCriterion ad group criterion}. The {@code labelId} must reference an existing {@linkplain Label label}. <p>Remove - Removes the link between the specified {@linkplain AdGroupCriterion ad group criterion} and {@linkplain Label label}.</p> @param operations the operations to apply @return a list of AdGroupCriterionLabel where each entry in the list is the result of applying the operation in the input list with the same index. For an add operation, the returned AdGroupCriterionLabel contains the AdGroupId, CriterionId and the LabelId. In the case of a remove operation, the returned AdGroupCriterionLabel will only have AdGroupId and CriterionId. @throws ApiException when there are one or more errors with the request 





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

 my $element = Google::Ads::AdWords::v201705::AdGroupCriterionService::mutateLabel->new($data);

Constructor. The following data structure may be passed to new():

 {
   operations =>  $a_reference_to, # see Google::Ads::AdWords::v201705::AdGroupCriterionLabelOperation
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

