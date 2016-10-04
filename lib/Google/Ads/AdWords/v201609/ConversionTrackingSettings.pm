package Google::Ads::AdWords::v201609::ConversionTrackingSettings;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/mcm/v201609' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %effectiveConversionTrackingId_of :ATTR(:get<effectiveConversionTrackingId>);
my %usesCrossAccountConversionTracking_of :ATTR(:get<usesCrossAccountConversionTracking>);
my %optimizeOnEstimatedConversions_of :ATTR(:get<optimizeOnEstimatedConversions>);

__PACKAGE__->_factory(
    [ qw(        effectiveConversionTrackingId
        usesCrossAccountConversionTracking
        optimizeOnEstimatedConversions

    ) ],
    {
        'effectiveConversionTrackingId' => \%effectiveConversionTrackingId_of,
        'usesCrossAccountConversionTracking' => \%usesCrossAccountConversionTracking_of,
        'optimizeOnEstimatedConversions' => \%optimizeOnEstimatedConversions_of,
    },
    {
        'effectiveConversionTrackingId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'usesCrossAccountConversionTracking' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'optimizeOnEstimatedConversions' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'effectiveConversionTrackingId' => 'effectiveConversionTrackingId',
        'usesCrossAccountConversionTracking' => 'usesCrossAccountConversionTracking',
        'optimizeOnEstimatedConversions' => 'optimizeOnEstimatedConversions',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201609::ConversionTrackingSettings

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ConversionTrackingSettings from the namespace https://adwords.google.com/api/adwords/mcm/v201609.

A collection of customer-wide settings related to AdWords Conversion Tracking. Settings that apply at the conversion type level can be accessed and modified though {@code ConversionTrackerService}. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * effectiveConversionTrackingId


=item * usesCrossAccountConversionTracking


=item * optimizeOnEstimatedConversions




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

