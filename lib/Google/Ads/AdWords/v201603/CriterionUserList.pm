package Google::Ads::AdWords::v201603::CriterionUserList;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201603' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201603::Criterion);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %id_of :ATTR(:get<id>);
my %type_of :ATTR(:get<type>);
my %Criterion__Type_of :ATTR(:get<Criterion__Type>);
my %userListId_of :ATTR(:get<userListId>);
my %userListName_of :ATTR(:get<userListName>);
my %userListMembershipStatus_of :ATTR(:get<userListMembershipStatus>);
my %userListEligibleForSearch_of :ATTR(:get<userListEligibleForSearch>);
my %userListEligibleForDisplay_of :ATTR(:get<userListEligibleForDisplay>);

__PACKAGE__->_factory(
    [ qw(        id
        type
        Criterion__Type
        userListId
        userListName
        userListMembershipStatus
        userListEligibleForSearch
        userListEligibleForDisplay

    ) ],
    {
        'id' => \%id_of,
        'type' => \%type_of,
        'Criterion__Type' => \%Criterion__Type_of,
        'userListId' => \%userListId_of,
        'userListName' => \%userListName_of,
        'userListMembershipStatus' => \%userListMembershipStatus_of,
        'userListEligibleForSearch' => \%userListEligibleForSearch_of,
        'userListEligibleForDisplay' => \%userListEligibleForDisplay_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'type' => 'Google::Ads::AdWords::v201603::Criterion::Type',
        'Criterion__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'userListId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'userListName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'userListMembershipStatus' => 'Google::Ads::AdWords::v201603::CriterionUserList::MembershipStatus',
        'userListEligibleForSearch' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'userListEligibleForDisplay' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'id' => 'id',
        'type' => 'type',
        'Criterion__Type' => 'Criterion.Type',
        'userListId' => 'userListId',
        'userListName' => 'userListName',
        'userListMembershipStatus' => 'userListMembershipStatus',
        'userListEligibleForSearch' => 'userListEligibleForSearch',
        'userListEligibleForDisplay' => 'userListEligibleForDisplay',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201603::CriterionUserList

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CriterionUserList from the namespace https://adwords.google.com/api/adwords/cm/v201603.

UserList - represents a user list that is defined by the advertiser to be targeted. <span class="constraint AdxEnabled">This is enabled for AdX.</span> 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * userListId


=item * userListName


=item * userListMembershipStatus


=item * userListEligibleForSearch


=item * userListEligibleForDisplay




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

