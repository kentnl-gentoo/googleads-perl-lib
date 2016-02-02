package Google::Ads::AdWords::v201509::AdGroupBidLandscape;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201509' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201509::BidLandscape);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %DataEntry__Type_of :ATTR(:get<DataEntry__Type>);
my %campaignId_of :ATTR(:get<campaignId>);
my %adGroupId_of :ATTR(:get<adGroupId>);
my %startDate_of :ATTR(:get<startDate>);
my %endDate_of :ATTR(:get<endDate>);
my %landscapePoints_of :ATTR(:get<landscapePoints>);
my %type_of :ATTR(:get<type>);
my %landscapeCurrent_of :ATTR(:get<landscapeCurrent>);

__PACKAGE__->_factory(
    [ qw(        DataEntry__Type
        campaignId
        adGroupId
        startDate
        endDate
        landscapePoints
        type
        landscapeCurrent

    ) ],
    {
        'DataEntry__Type' => \%DataEntry__Type_of,
        'campaignId' => \%campaignId_of,
        'adGroupId' => \%adGroupId_of,
        'startDate' => \%startDate_of,
        'endDate' => \%endDate_of,
        'landscapePoints' => \%landscapePoints_of,
        'type' => \%type_of,
        'landscapeCurrent' => \%landscapeCurrent_of,
    },
    {
        'DataEntry__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'campaignId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'adGroupId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'startDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'endDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'landscapePoints' => 'Google::Ads::AdWords::v201509::BidLandscape::LandscapePoint',
        'type' => 'Google::Ads::AdWords::v201509::AdGroupBidLandscape::Type',
        'landscapeCurrent' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'DataEntry__Type' => 'DataEntry.Type',
        'campaignId' => 'campaignId',
        'adGroupId' => 'adGroupId',
        'startDate' => 'startDate',
        'endDate' => 'endDate',
        'landscapePoints' => 'landscapePoints',
        'type' => 'type',
        'landscapeCurrent' => 'landscapeCurrent',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201509::AdGroupBidLandscape

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdGroupBidLandscape from the namespace https://adwords.google.com/api/adwords/cm/v201509.

Represents data about a bidlandscape for an adgroup. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * type


=item * landscapeCurrent




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

