package Google::Ads::AdWords::v201710::MessageFeedItem;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201710' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201710::ExtensionFeedItem);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %feedId_of :ATTR(:get<feedId>);
my %feedItemId_of :ATTR(:get<feedItemId>);
my %status_of :ATTR(:get<status>);
my %feedType_of :ATTR(:get<feedType>);
my %startTime_of :ATTR(:get<startTime>);
my %endTime_of :ATTR(:get<endTime>);
my %devicePreference_of :ATTR(:get<devicePreference>);
my %scheduling_of :ATTR(:get<scheduling>);
my %campaignTargeting_of :ATTR(:get<campaignTargeting>);
my %adGroupTargeting_of :ATTR(:get<adGroupTargeting>);
my %keywordTargeting_of :ATTR(:get<keywordTargeting>);
my %geoTargeting_of :ATTR(:get<geoTargeting>);
my %geoTargetingRestriction_of :ATTR(:get<geoTargetingRestriction>);
my %policyData_of :ATTR(:get<policyData>);
my %ExtensionFeedItem__Type_of :ATTR(:get<ExtensionFeedItem__Type>);
my %messageBusinessName_of :ATTR(:get<messageBusinessName>);
my %messageCountryCode_of :ATTR(:get<messageCountryCode>);
my %messagePhoneNumber_of :ATTR(:get<messagePhoneNumber>);
my %messageExtensionText_of :ATTR(:get<messageExtensionText>);
my %messageText_of :ATTR(:get<messageText>);

__PACKAGE__->_factory(
    [ qw(        feedId
        feedItemId
        status
        feedType
        startTime
        endTime
        devicePreference
        scheduling
        campaignTargeting
        adGroupTargeting
        keywordTargeting
        geoTargeting
        geoTargetingRestriction
        policyData
        ExtensionFeedItem__Type
        messageBusinessName
        messageCountryCode
        messagePhoneNumber
        messageExtensionText
        messageText

    ) ],
    {
        'feedId' => \%feedId_of,
        'feedItemId' => \%feedItemId_of,
        'status' => \%status_of,
        'feedType' => \%feedType_of,
        'startTime' => \%startTime_of,
        'endTime' => \%endTime_of,
        'devicePreference' => \%devicePreference_of,
        'scheduling' => \%scheduling_of,
        'campaignTargeting' => \%campaignTargeting_of,
        'adGroupTargeting' => \%adGroupTargeting_of,
        'keywordTargeting' => \%keywordTargeting_of,
        'geoTargeting' => \%geoTargeting_of,
        'geoTargetingRestriction' => \%geoTargetingRestriction_of,
        'policyData' => \%policyData_of,
        'ExtensionFeedItem__Type' => \%ExtensionFeedItem__Type_of,
        'messageBusinessName' => \%messageBusinessName_of,
        'messageCountryCode' => \%messageCountryCode_of,
        'messagePhoneNumber' => \%messagePhoneNumber_of,
        'messageExtensionText' => \%messageExtensionText_of,
        'messageText' => \%messageText_of,
    },
    {
        'feedId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'feedItemId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'status' => 'Google::Ads::AdWords::v201710::FeedItem::Status',
        'feedType' => 'Google::Ads::AdWords::v201710::Feed::Type',
        'startTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'endTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'devicePreference' => 'Google::Ads::AdWords::v201710::FeedItemDevicePreference',
        'scheduling' => 'Google::Ads::AdWords::v201710::FeedItemScheduling',
        'campaignTargeting' => 'Google::Ads::AdWords::v201710::FeedItemCampaignTargeting',
        'adGroupTargeting' => 'Google::Ads::AdWords::v201710::FeedItemAdGroupTargeting',
        'keywordTargeting' => 'Google::Ads::AdWords::v201710::Keyword',
        'geoTargeting' => 'Google::Ads::AdWords::v201710::Location',
        'geoTargetingRestriction' => 'Google::Ads::AdWords::v201710::FeedItemGeoRestriction',
        'policyData' => 'Google::Ads::AdWords::v201710::FeedItemPolicyData',
        'ExtensionFeedItem__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'messageBusinessName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'messageCountryCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'messagePhoneNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'messageExtensionText' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'messageText' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'feedId' => 'feedId',
        'feedItemId' => 'feedItemId',
        'status' => 'status',
        'feedType' => 'feedType',
        'startTime' => 'startTime',
        'endTime' => 'endTime',
        'devicePreference' => 'devicePreference',
        'scheduling' => 'scheduling',
        'campaignTargeting' => 'campaignTargeting',
        'adGroupTargeting' => 'adGroupTargeting',
        'keywordTargeting' => 'keywordTargeting',
        'geoTargeting' => 'geoTargeting',
        'geoTargetingRestriction' => 'geoTargetingRestriction',
        'policyData' => 'policyData',
        'ExtensionFeedItem__Type' => 'ExtensionFeedItem.Type',
        'messageBusinessName' => 'messageBusinessName',
        'messageCountryCode' => 'messageCountryCode',
        'messagePhoneNumber' => 'messagePhoneNumber',
        'messageExtensionText' => 'messageExtensionText',
        'messageText' => 'messageText',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201710::MessageFeedItem

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
MessageFeedItem from the namespace https://adwords.google.com/api/adwords/cm/v201710.

Represents a Message extension. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * messageBusinessName


=item * messageCountryCode


=item * messagePhoneNumber


=item * messageExtensionText


=item * messageText




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

