package Google::Ads::AdWords::v201702::AdGroupChangeData;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/ch/v201702' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %adGroupId_of :ATTR(:get<adGroupId>);
my %adGroupChangeStatus_of :ATTR(:get<adGroupChangeStatus>);
my %changedAds_of :ATTR(:get<changedAds>);
my %changedCriteria_of :ATTR(:get<changedCriteria>);
my %removedCriteria_of :ATTR(:get<removedCriteria>);
my %changedFeeds_of :ATTR(:get<changedFeeds>);
my %removedFeeds_of :ATTR(:get<removedFeeds>);
my %changedAdGroupBidModifierCriteria_of :ATTR(:get<changedAdGroupBidModifierCriteria>);
my %removedAdGroupBidModifierCriteria_of :ATTR(:get<removedAdGroupBidModifierCriteria>);

__PACKAGE__->_factory(
    [ qw(        adGroupId
        adGroupChangeStatus
        changedAds
        changedCriteria
        removedCriteria
        changedFeeds
        removedFeeds
        changedAdGroupBidModifierCriteria
        removedAdGroupBidModifierCriteria

    ) ],
    {
        'adGroupId' => \%adGroupId_of,
        'adGroupChangeStatus' => \%adGroupChangeStatus_of,
        'changedAds' => \%changedAds_of,
        'changedCriteria' => \%changedCriteria_of,
        'removedCriteria' => \%removedCriteria_of,
        'changedFeeds' => \%changedFeeds_of,
        'removedFeeds' => \%removedFeeds_of,
        'changedAdGroupBidModifierCriteria' => \%changedAdGroupBidModifierCriteria_of,
        'removedAdGroupBidModifierCriteria' => \%removedAdGroupBidModifierCriteria_of,
    },
    {
        'adGroupId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'adGroupChangeStatus' => 'Google::Ads::AdWords::v201702::ChangeStatus',
        'changedAds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'changedCriteria' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'removedCriteria' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'changedFeeds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'removedFeeds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'changedAdGroupBidModifierCriteria' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'removedAdGroupBidModifierCriteria' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'adGroupId' => 'adGroupId',
        'adGroupChangeStatus' => 'adGroupChangeStatus',
        'changedAds' => 'changedAds',
        'changedCriteria' => 'changedCriteria',
        'removedCriteria' => 'removedCriteria',
        'changedFeeds' => 'changedFeeds',
        'removedFeeds' => 'removedFeeds',
        'changedAdGroupBidModifierCriteria' => 'changedAdGroupBidModifierCriteria',
        'removedAdGroupBidModifierCriteria' => 'removedAdGroupBidModifierCriteria',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201702::AdGroupChangeData

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdGroupChangeData from the namespace https://adwords.google.com/api/adwords/ch/v201702.

Holds information about a changed adgroup 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * adGroupId


=item * adGroupChangeStatus


=item * changedAds


=item * changedCriteria


=item * removedCriteria


=item * changedFeeds


=item * removedFeeds


=item * changedAdGroupBidModifierCriteria


=item * removedAdGroupBidModifierCriteria




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

