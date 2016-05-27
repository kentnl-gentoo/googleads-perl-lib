package Google::Ads::AdWords::v201605::Campaign;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201605' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %id_of :ATTR(:get<id>);
my %name_of :ATTR(:get<name>);
my %status_of :ATTR(:get<status>);
my %servingStatus_of :ATTR(:get<servingStatus>);
my %startDate_of :ATTR(:get<startDate>);
my %endDate_of :ATTR(:get<endDate>);
my %budget_of :ATTR(:get<budget>);
my %conversionOptimizerEligibility_of :ATTR(:get<conversionOptimizerEligibility>);
my %adServingOptimizationStatus_of :ATTR(:get<adServingOptimizationStatus>);
my %frequencyCap_of :ATTR(:get<frequencyCap>);
my %settings_of :ATTR(:get<settings>);
my %advertisingChannelType_of :ATTR(:get<advertisingChannelType>);
my %advertisingChannelSubType_of :ATTR(:get<advertisingChannelSubType>);
my %networkSetting_of :ATTR(:get<networkSetting>);
my %labels_of :ATTR(:get<labels>);
my %biddingStrategyConfiguration_of :ATTR(:get<biddingStrategyConfiguration>);
my %campaignTrialType_of :ATTR(:get<campaignTrialType>);
my %baseCampaignId_of :ATTR(:get<baseCampaignId>);
my %forwardCompatibilityMap_of :ATTR(:get<forwardCompatibilityMap>);
my %trackingUrlTemplate_of :ATTR(:get<trackingUrlTemplate>);
my %urlCustomParameters_of :ATTR(:get<urlCustomParameters>);
my %vanityPharma_of :ATTR(:get<vanityPharma>);

__PACKAGE__->_factory(
    [ qw(        id
        name
        status
        servingStatus
        startDate
        endDate
        budget
        conversionOptimizerEligibility
        adServingOptimizationStatus
        frequencyCap
        settings
        advertisingChannelType
        advertisingChannelSubType
        networkSetting
        labels
        biddingStrategyConfiguration
        campaignTrialType
        baseCampaignId
        forwardCompatibilityMap
        trackingUrlTemplate
        urlCustomParameters
        vanityPharma

    ) ],
    {
        'id' => \%id_of,
        'name' => \%name_of,
        'status' => \%status_of,
        'servingStatus' => \%servingStatus_of,
        'startDate' => \%startDate_of,
        'endDate' => \%endDate_of,
        'budget' => \%budget_of,
        'conversionOptimizerEligibility' => \%conversionOptimizerEligibility_of,
        'adServingOptimizationStatus' => \%adServingOptimizationStatus_of,
        'frequencyCap' => \%frequencyCap_of,
        'settings' => \%settings_of,
        'advertisingChannelType' => \%advertisingChannelType_of,
        'advertisingChannelSubType' => \%advertisingChannelSubType_of,
        'networkSetting' => \%networkSetting_of,
        'labels' => \%labels_of,
        'biddingStrategyConfiguration' => \%biddingStrategyConfiguration_of,
        'campaignTrialType' => \%campaignTrialType_of,
        'baseCampaignId' => \%baseCampaignId_of,
        'forwardCompatibilityMap' => \%forwardCompatibilityMap_of,
        'trackingUrlTemplate' => \%trackingUrlTemplate_of,
        'urlCustomParameters' => \%urlCustomParameters_of,
        'vanityPharma' => \%vanityPharma_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'status' => 'Google::Ads::AdWords::v201605::CampaignStatus',
        'servingStatus' => 'Google::Ads::AdWords::v201605::ServingStatus',
        'startDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'endDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'budget' => 'Google::Ads::AdWords::v201605::Budget',
        'conversionOptimizerEligibility' => 'Google::Ads::AdWords::v201605::ConversionOptimizerEligibility',
        'adServingOptimizationStatus' => 'Google::Ads::AdWords::v201605::AdServingOptimizationStatus',
        'frequencyCap' => 'Google::Ads::AdWords::v201605::FrequencyCap',
        'settings' => 'Google::Ads::AdWords::v201605::Setting',
        'advertisingChannelType' => 'Google::Ads::AdWords::v201605::AdvertisingChannelType',
        'advertisingChannelSubType' => 'Google::Ads::AdWords::v201605::AdvertisingChannelSubType',
        'networkSetting' => 'Google::Ads::AdWords::v201605::NetworkSetting',
        'labels' => 'Google::Ads::AdWords::v201605::Label',
        'biddingStrategyConfiguration' => 'Google::Ads::AdWords::v201605::BiddingStrategyConfiguration',
        'campaignTrialType' => 'Google::Ads::AdWords::v201605::CampaignTrialType',
        'baseCampaignId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'forwardCompatibilityMap' => 'Google::Ads::AdWords::v201605::String_StringMapEntry',
        'trackingUrlTemplate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'urlCustomParameters' => 'Google::Ads::AdWords::v201605::CustomParameters',
        'vanityPharma' => 'Google::Ads::AdWords::v201605::VanityPharma',
    },
    {

        'id' => 'id',
        'name' => 'name',
        'status' => 'status',
        'servingStatus' => 'servingStatus',
        'startDate' => 'startDate',
        'endDate' => 'endDate',
        'budget' => 'budget',
        'conversionOptimizerEligibility' => 'conversionOptimizerEligibility',
        'adServingOptimizationStatus' => 'adServingOptimizationStatus',
        'frequencyCap' => 'frequencyCap',
        'settings' => 'settings',
        'advertisingChannelType' => 'advertisingChannelType',
        'advertisingChannelSubType' => 'advertisingChannelSubType',
        'networkSetting' => 'networkSetting',
        'labels' => 'labels',
        'biddingStrategyConfiguration' => 'biddingStrategyConfiguration',
        'campaignTrialType' => 'campaignTrialType',
        'baseCampaignId' => 'baseCampaignId',
        'forwardCompatibilityMap' => 'forwardCompatibilityMap',
        'trackingUrlTemplate' => 'trackingUrlTemplate',
        'urlCustomParameters' => 'urlCustomParameters',
        'vanityPharma' => 'vanityPharma',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201605::Campaign

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Campaign from the namespace https://adwords.google.com/api/adwords/cm/v201605.

Data representing an AdWords campaign. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * id


=item * name


=item * status


=item * servingStatus


=item * startDate


=item * endDate


=item * budget


=item * conversionOptimizerEligibility


=item * adServingOptimizationStatus


=item * frequencyCap


=item * settings


=item * advertisingChannelType


=item * advertisingChannelSubType


=item * networkSetting


=item * labels


=item * biddingStrategyConfiguration


=item * campaignTrialType


=item * baseCampaignId


=item * forwardCompatibilityMap


=item * trackingUrlTemplate


=item * urlCustomParameters


=item * vanityPharma




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

