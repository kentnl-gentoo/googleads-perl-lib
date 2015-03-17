package Google::Ads::AdWords::v201409::AppFeedItem;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201409' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201409::ExtensionFeedItem);
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
my %ExtensionFeedItem__Type_of :ATTR(:get<ExtensionFeedItem__Type>);
my %appStore_of :ATTR(:get<appStore>);
my %appId_of :ATTR(:get<appId>);
my %appLinkText_of :ATTR(:get<appLinkText>);
my %appUrl_of :ATTR(:get<appUrl>);

__PACKAGE__->_factory(
    [ qw(        feedId
        feedItemId
        status
        feedType
        startTime
        endTime
        devicePreference
        scheduling
        ExtensionFeedItem__Type
        appStore
        appId
        appLinkText
        appUrl

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
        'ExtensionFeedItem__Type' => \%ExtensionFeedItem__Type_of,
        'appStore' => \%appStore_of,
        'appId' => \%appId_of,
        'appLinkText' => \%appLinkText_of,
        'appUrl' => \%appUrl_of,
    },
    {
        'feedId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'feedItemId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'status' => 'Google::Ads::AdWords::v201409::FeedItem::Status',
        'feedType' => 'Google::Ads::AdWords::v201409::Feed::Type',
        'startTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'endTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'devicePreference' => 'Google::Ads::AdWords::v201409::FeedItemDevicePreference',
        'scheduling' => 'Google::Ads::AdWords::v201409::FeedItemScheduling',
        'ExtensionFeedItem__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'appStore' => 'Google::Ads::AdWords::v201409::AppFeedItem::AppStore',
        'appId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'appLinkText' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'appUrl' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
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
        'ExtensionFeedItem__Type' => 'ExtensionFeedItem.Type',
        'appStore' => 'appStore',
        'appId' => 'appId',
        'appLinkText' => 'appLinkText',
        'appUrl' => 'appUrl',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201409::AppFeedItem

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AppFeedItem from the namespace https://adwords.google.com/api/adwords/cm/v201409.

Represents an App extension. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * appStore


=item * appId


=item * appLinkText


=item * appUrl




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

