package Google::Ads::AdWords::v201603::CallFeedItem;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201603' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201603::ExtensionFeedItem);
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
my %policyData_of :ATTR(:get<policyData>);
my %ExtensionFeedItem__Type_of :ATTR(:get<ExtensionFeedItem__Type>);
my %callPhoneNumber_of :ATTR(:get<callPhoneNumber>);
my %callCountryCode_of :ATTR(:get<callCountryCode>);
my %callTracking_of :ATTR(:get<callTracking>);
my %callOnly_of :ATTR(:get<callOnly>);
my %callConversionType_of :ATTR(:get<callConversionType>);
my %disableCallConversionTracking_of :ATTR(:get<disableCallConversionTracking>);

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
        policyData
        ExtensionFeedItem__Type
        callPhoneNumber
        callCountryCode
        callTracking
        callOnly
        callConversionType
        disableCallConversionTracking

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
        'policyData' => \%policyData_of,
        'ExtensionFeedItem__Type' => \%ExtensionFeedItem__Type_of,
        'callPhoneNumber' => \%callPhoneNumber_of,
        'callCountryCode' => \%callCountryCode_of,
        'callTracking' => \%callTracking_of,
        'callOnly' => \%callOnly_of,
        'callConversionType' => \%callConversionType_of,
        'disableCallConversionTracking' => \%disableCallConversionTracking_of,
    },
    {
        'feedId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'feedItemId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'status' => 'Google::Ads::AdWords::v201603::FeedItem::Status',
        'feedType' => 'Google::Ads::AdWords::v201603::Feed::Type',
        'startTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'endTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'devicePreference' => 'Google::Ads::AdWords::v201603::FeedItemDevicePreference',
        'scheduling' => 'Google::Ads::AdWords::v201603::FeedItemScheduling',
        'campaignTargeting' => 'Google::Ads::AdWords::v201603::FeedItemCampaignTargeting',
        'adGroupTargeting' => 'Google::Ads::AdWords::v201603::FeedItemAdGroupTargeting',
        'keywordTargeting' => 'Google::Ads::AdWords::v201603::Keyword',
        'geoTargeting' => 'Google::Ads::AdWords::v201603::Location',
        'policyData' => 'Google::Ads::AdWords::v201603::FeedItemPolicyData',
        'ExtensionFeedItem__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'callPhoneNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'callCountryCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'callTracking' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'callOnly' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'callConversionType' => 'Google::Ads::AdWords::v201603::CallConversionType',
        'disableCallConversionTracking' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
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
        'policyData' => 'policyData',
        'ExtensionFeedItem__Type' => 'ExtensionFeedItem.Type',
        'callPhoneNumber' => 'callPhoneNumber',
        'callCountryCode' => 'callCountryCode',
        'callTracking' => 'callTracking',
        'callOnly' => 'callOnly',
        'callConversionType' => 'callConversionType',
        'disableCallConversionTracking' => 'disableCallConversionTracking',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201603::CallFeedItem

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CallFeedItem from the namespace https://adwords.google.com/api/adwords/cm/v201603.

Represents a Call extension. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * callPhoneNumber


=item * callCountryCode


=item * callTracking


=item * callOnly


=item * callConversionType


=item * disableCallConversionTracking




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

