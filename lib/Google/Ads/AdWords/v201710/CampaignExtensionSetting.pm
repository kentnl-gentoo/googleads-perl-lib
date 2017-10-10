package Google::Ads::AdWords::v201710::CampaignExtensionSetting;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201710' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %campaignId_of :ATTR(:get<campaignId>);
my %extensionType_of :ATTR(:get<extensionType>);
my %extensionSetting_of :ATTR(:get<extensionSetting>);

__PACKAGE__->_factory(
    [ qw(        campaignId
        extensionType
        extensionSetting

    ) ],
    {
        'campaignId' => \%campaignId_of,
        'extensionType' => \%extensionType_of,
        'extensionSetting' => \%extensionSetting_of,
    },
    {
        'campaignId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'extensionType' => 'Google::Ads::AdWords::v201710::Feed::Type',
        'extensionSetting' => 'Google::Ads::AdWords::v201710::ExtensionSetting',
    },
    {

        'campaignId' => 'campaignId',
        'extensionType' => 'extensionType',
        'extensionSetting' => 'extensionSetting',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201710::CampaignExtensionSetting

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CampaignExtensionSetting from the namespace https://adwords.google.com/api/adwords/cm/v201710.

A CampaignExtensionSetting is used to add or modify extensions being served for the specified campaign. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * campaignId


=item * extensionType


=item * extensionSetting




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

