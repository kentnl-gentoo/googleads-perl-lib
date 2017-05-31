package Google::Ads::AdWords::v201705::FeedItemCampaignTargeting;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201705' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %TargetingCampaignId_of :ATTR(:get<TargetingCampaignId>);

__PACKAGE__->_factory(
    [ qw(        TargetingCampaignId

    ) ],
    {
        'TargetingCampaignId' => \%TargetingCampaignId_of,
    },
    {
        'TargetingCampaignId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'TargetingCampaignId' => 'TargetingCampaignId',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201705::FeedItemCampaignTargeting

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
FeedItemCampaignTargeting from the namespace https://adwords.google.com/api/adwords/cm/v201705.

Specifies the campaign the request context must match in order for the feed item to be considered eligible for serving (aka the targeted campaign). E.g., if the below campaign targeting is set to campaignId = X, then the feed item can only serve under campaign X. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * TargetingCampaignId




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

