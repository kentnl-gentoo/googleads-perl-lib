package Google::Ads::AdWords::v201603::FeedItemPolicyData;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201603' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201603::PolicyData);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %disapprovalReasons_of :ATTR(:get<disapprovalReasons>);
my %PolicyData__Type_of :ATTR(:get<PolicyData__Type>);
my %placeholderType_of :ATTR(:get<placeholderType>);
my %feedMappingId_of :ATTR(:get<feedMappingId>);
my %validationStatus_of :ATTR(:get<validationStatus>);
my %approvalStatus_of :ATTR(:get<approvalStatus>);
my %validationErrors_of :ATTR(:get<validationErrors>);

__PACKAGE__->_factory(
    [ qw(        disapprovalReasons
        PolicyData__Type
        placeholderType
        feedMappingId
        validationStatus
        approvalStatus
        validationErrors

    ) ],
    {
        'disapprovalReasons' => \%disapprovalReasons_of,
        'PolicyData__Type' => \%PolicyData__Type_of,
        'placeholderType' => \%placeholderType_of,
        'feedMappingId' => \%feedMappingId_of,
        'validationStatus' => \%validationStatus_of,
        'approvalStatus' => \%approvalStatus_of,
        'validationErrors' => \%validationErrors_of,
    },
    {
        'disapprovalReasons' => 'Google::Ads::AdWords::v201603::DisapprovalReason',
        'PolicyData__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'placeholderType' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'feedMappingId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'validationStatus' => 'Google::Ads::AdWords::v201603::FeedItemValidationStatus',
        'approvalStatus' => 'Google::Ads::AdWords::v201603::FeedItemApprovalStatus',
        'validationErrors' => 'Google::Ads::AdWords::v201603::FeedItemAttributeError',
    },
    {

        'disapprovalReasons' => 'disapprovalReasons',
        'PolicyData__Type' => 'PolicyData.Type',
        'placeholderType' => 'placeholderType',
        'feedMappingId' => 'feedMappingId',
        'validationStatus' => 'validationStatus',
        'approvalStatus' => 'approvalStatus',
        'validationErrors' => 'validationErrors',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201603::FeedItemPolicyData

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
FeedItemPolicyData from the namespace https://adwords.google.com/api/adwords/cm/v201603.

Contains offline-validation and approval results for a given FeedItem and FeedMapping. Each validation data indicates any issues found on the feed item when used in the context of the feed mapping. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * placeholderType


=item * feedMappingId


=item * validationStatus


=item * approvalStatus


=item * validationErrors




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

