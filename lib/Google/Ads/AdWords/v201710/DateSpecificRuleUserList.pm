package Google::Ads::AdWords::v201710::DateSpecificRuleUserList;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/rm/v201710' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201710::RuleBasedUserList);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %id_of :ATTR(:get<id>);
my %isReadOnly_of :ATTR(:get<isReadOnly>);
my %name_of :ATTR(:get<name>);
my %description_of :ATTR(:get<description>);
my %status_of :ATTR(:get<status>);
my %integrationCode_of :ATTR(:get<integrationCode>);
my %accessReason_of :ATTR(:get<accessReason>);
my %accountUserListStatus_of :ATTR(:get<accountUserListStatus>);
my %membershipLifeSpan_of :ATTR(:get<membershipLifeSpan>);
my %size_of :ATTR(:get<size>);
my %sizeRange_of :ATTR(:get<sizeRange>);
my %sizeForSearch_of :ATTR(:get<sizeForSearch>);
my %sizeRangeForSearch_of :ATTR(:get<sizeRangeForSearch>);
my %listType_of :ATTR(:get<listType>);
my %isEligibleForSearch_of :ATTR(:get<isEligibleForSearch>);
my %isEligibleForDisplay_of :ATTR(:get<isEligibleForDisplay>);
my %closingReason_of :ATTR(:get<closingReason>);
my %UserList__Type_of :ATTR(:get<UserList__Type>);
my %prepopulationStatus_of :ATTR(:get<prepopulationStatus>);
my %rule_of :ATTR(:get<rule>);
my %startDate_of :ATTR(:get<startDate>);
my %endDate_of :ATTR(:get<endDate>);

__PACKAGE__->_factory(
    [ qw(        id
        isReadOnly
        name
        description
        status
        integrationCode
        accessReason
        accountUserListStatus
        membershipLifeSpan
        size
        sizeRange
        sizeForSearch
        sizeRangeForSearch
        listType
        isEligibleForSearch
        isEligibleForDisplay
        closingReason
        UserList__Type
        prepopulationStatus
        rule
        startDate
        endDate

    ) ],
    {
        'id' => \%id_of,
        'isReadOnly' => \%isReadOnly_of,
        'name' => \%name_of,
        'description' => \%description_of,
        'status' => \%status_of,
        'integrationCode' => \%integrationCode_of,
        'accessReason' => \%accessReason_of,
        'accountUserListStatus' => \%accountUserListStatus_of,
        'membershipLifeSpan' => \%membershipLifeSpan_of,
        'size' => \%size_of,
        'sizeRange' => \%sizeRange_of,
        'sizeForSearch' => \%sizeForSearch_of,
        'sizeRangeForSearch' => \%sizeRangeForSearch_of,
        'listType' => \%listType_of,
        'isEligibleForSearch' => \%isEligibleForSearch_of,
        'isEligibleForDisplay' => \%isEligibleForDisplay_of,
        'closingReason' => \%closingReason_of,
        'UserList__Type' => \%UserList__Type_of,
        'prepopulationStatus' => \%prepopulationStatus_of,
        'rule' => \%rule_of,
        'startDate' => \%startDate_of,
        'endDate' => \%endDate_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'isReadOnly' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'description' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'status' => 'Google::Ads::AdWords::v201710::UserListMembershipStatus',
        'integrationCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'accessReason' => 'Google::Ads::AdWords::v201710::AccessReason',
        'accountUserListStatus' => 'Google::Ads::AdWords::v201710::AccountUserListStatus',
        'membershipLifeSpan' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'size' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'sizeRange' => 'Google::Ads::AdWords::v201710::SizeRange',
        'sizeForSearch' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'sizeRangeForSearch' => 'Google::Ads::AdWords::v201710::SizeRange',
        'listType' => 'Google::Ads::AdWords::v201710::UserListType',
        'isEligibleForSearch' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'isEligibleForDisplay' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'closingReason' => 'Google::Ads::AdWords::v201710::UserListClosingReason',
        'UserList__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'prepopulationStatus' => 'Google::Ads::AdWords::v201710::RuleBasedUserList::PrepopulationStatus',
        'rule' => 'Google::Ads::AdWords::v201710::Rule',
        'startDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'endDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'id' => 'id',
        'isReadOnly' => 'isReadOnly',
        'name' => 'name',
        'description' => 'description',
        'status' => 'status',
        'integrationCode' => 'integrationCode',
        'accessReason' => 'accessReason',
        'accountUserListStatus' => 'accountUserListStatus',
        'membershipLifeSpan' => 'membershipLifeSpan',
        'size' => 'size',
        'sizeRange' => 'sizeRange',
        'sizeForSearch' => 'sizeForSearch',
        'sizeRangeForSearch' => 'sizeRangeForSearch',
        'listType' => 'listType',
        'isEligibleForSearch' => 'isEligibleForSearch',
        'isEligibleForDisplay' => 'isEligibleForDisplay',
        'closingReason' => 'closingReason',
        'UserList__Type' => 'UserList.Type',
        'prepopulationStatus' => 'prepopulationStatus',
        'rule' => 'rule',
        'startDate' => 'startDate',
        'endDate' => 'endDate',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201710::DateSpecificRuleUserList

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
DateSpecificRuleUserList from the namespace https://adwords.google.com/api/adwords/rm/v201710.

Visitors of a page during specific dates. The visiting periods are defined as follows: <ul> <li> between {@code startDate} (inclusive) and {@code endDate} (inclusive); <li> before {@code endDate} (exclusive) with {@code startDate} = 2000-01-01; <li> after {@code startDate} (exclusive) with {@code endDate} = 2037-12-30. </ul> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * rule


=item * startDate


=item * endDate




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

