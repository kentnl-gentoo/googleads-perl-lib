package Google::Ads::AdWords::v201609::CampaignChangeData;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/ch/v201609' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %campaignId_of :ATTR(:get<campaignId>);
my %campaignChangeStatus_of :ATTR(:get<campaignChangeStatus>);
my %changedAdGroups_of :ATTR(:get<changedAdGroups>);
my %addedCampaignCriteria_of :ATTR(:get<addedCampaignCriteria>);
my %removedCampaignCriteria_of :ATTR(:get<removedCampaignCriteria>);
my %changedFeeds_of :ATTR(:get<changedFeeds>);
my %removedFeeds_of :ATTR(:get<removedFeeds>);

__PACKAGE__->_factory(
    [ qw(        campaignId
        campaignChangeStatus
        changedAdGroups
        addedCampaignCriteria
        removedCampaignCriteria
        changedFeeds
        removedFeeds

    ) ],
    {
        'campaignId' => \%campaignId_of,
        'campaignChangeStatus' => \%campaignChangeStatus_of,
        'changedAdGroups' => \%changedAdGroups_of,
        'addedCampaignCriteria' => \%addedCampaignCriteria_of,
        'removedCampaignCriteria' => \%removedCampaignCriteria_of,
        'changedFeeds' => \%changedFeeds_of,
        'removedFeeds' => \%removedFeeds_of,
    },
    {
        'campaignId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'campaignChangeStatus' => 'Google::Ads::AdWords::v201609::ChangeStatus',
        'changedAdGroups' => 'Google::Ads::AdWords::v201609::AdGroupChangeData',
        'addedCampaignCriteria' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'removedCampaignCriteria' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'changedFeeds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'removedFeeds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'campaignId' => 'campaignId',
        'campaignChangeStatus' => 'campaignChangeStatus',
        'changedAdGroups' => 'changedAdGroups',
        'addedCampaignCriteria' => 'addedCampaignCriteria',
        'removedCampaignCriteria' => 'removedCampaignCriteria',
        'changedFeeds' => 'changedFeeds',
        'removedFeeds' => 'removedFeeds',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201609::CampaignChangeData

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CampaignChangeData from the namespace https://adwords.google.com/api/adwords/ch/v201609.

Holds information about a changed campaign and any ad groups under that have changed. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * campaignId


=item * campaignChangeStatus


=item * changedAdGroups


=item * addedCampaignCriteria


=item * removedCampaignCriteria


=item * changedFeeds


=item * removedFeeds




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

