package Google::Ads::AdWords::v201502::AdGroupAd;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201502' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %adGroupId_of :ATTR(:get<adGroupId>);
my %ad_of :ATTR(:get<ad>);
my %experimentData_of :ATTR(:get<experimentData>);
my %status_of :ATTR(:get<status>);
my %approvalStatus_of :ATTR(:get<approvalStatus>);
my %trademarks_of :ATTR(:get<trademarks>);
my %disapprovalReasons_of :ATTR(:get<disapprovalReasons>);
my %trademarkDisapproved_of :ATTR(:get<trademarkDisapproved>);
my %labels_of :ATTR(:get<labels>);
my %forwardCompatibilityMap_of :ATTR(:get<forwardCompatibilityMap>);

__PACKAGE__->_factory(
    [ qw(        adGroupId
        ad
        experimentData
        status
        approvalStatus
        trademarks
        disapprovalReasons
        trademarkDisapproved
        labels
        forwardCompatibilityMap

    ) ],
    {
        'adGroupId' => \%adGroupId_of,
        'ad' => \%ad_of,
        'experimentData' => \%experimentData_of,
        'status' => \%status_of,
        'approvalStatus' => \%approvalStatus_of,
        'trademarks' => \%trademarks_of,
        'disapprovalReasons' => \%disapprovalReasons_of,
        'trademarkDisapproved' => \%trademarkDisapproved_of,
        'labels' => \%labels_of,
        'forwardCompatibilityMap' => \%forwardCompatibilityMap_of,
    },
    {
        'adGroupId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'ad' => 'Google::Ads::AdWords::v201502::Ad',
        'experimentData' => 'Google::Ads::AdWords::v201502::AdGroupAdExperimentData',
        'status' => 'Google::Ads::AdWords::v201502::AdGroupAd::Status',
        'approvalStatus' => 'Google::Ads::AdWords::v201502::AdGroupAd::ApprovalStatus',
        'trademarks' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'disapprovalReasons' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'trademarkDisapproved' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'labels' => 'Google::Ads::AdWords::v201502::Label',
        'forwardCompatibilityMap' => 'Google::Ads::AdWords::v201502::String_StringMapEntry',
    },
    {

        'adGroupId' => 'adGroupId',
        'ad' => 'ad',
        'experimentData' => 'experimentData',
        'status' => 'status',
        'approvalStatus' => 'approvalStatus',
        'trademarks' => 'trademarks',
        'disapprovalReasons' => 'disapprovalReasons',
        'trademarkDisapproved' => 'trademarkDisapproved',
        'labels' => 'labels',
        'forwardCompatibilityMap' => 'forwardCompatibilityMap',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::AdGroupAd

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdGroupAd from the namespace https://adwords.google.com/api/adwords/cm/v201502.

Represents an ad in an ad group. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * adGroupId


=item * ad


=item * experimentData


=item * status


=item * approvalStatus


=item * trademarks


=item * disapprovalReasons


=item * trademarkDisapproved


=item * labels


=item * forwardCompatibilityMap




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

