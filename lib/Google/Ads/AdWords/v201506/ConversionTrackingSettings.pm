package Google::Ads::AdWords::v201506::ConversionTrackingSettings;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/mcm/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %conversionOptimizerMode_of :ATTR(:get<conversionOptimizerMode>);
my %effectiveConversionTrackingId_of :ATTR(:get<effectiveConversionTrackingId>);
my %usesCrossAccountConversionTracking_of :ATTR(:get<usesCrossAccountConversionTracking>);

__PACKAGE__->_factory(
    [ qw(        conversionOptimizerMode
        effectiveConversionTrackingId
        usesCrossAccountConversionTracking

    ) ],
    {
        'conversionOptimizerMode' => \%conversionOptimizerMode_of,
        'effectiveConversionTrackingId' => \%effectiveConversionTrackingId_of,
        'usesCrossAccountConversionTracking' => \%usesCrossAccountConversionTracking_of,
    },
    {
        'conversionOptimizerMode' => 'Google::Ads::AdWords::v201506::ConversionDeduplicationMode',
        'effectiveConversionTrackingId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'usesCrossAccountConversionTracking' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'conversionOptimizerMode' => 'conversionOptimizerMode',
        'effectiveConversionTrackingId' => 'effectiveConversionTrackingId',
        'usesCrossAccountConversionTracking' => 'usesCrossAccountConversionTracking',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::ConversionTrackingSettings

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ConversionTrackingSettings from the namespace https://adwords.google.com/api/adwords/mcm/v201506.

A collection of customer-wide settings related to AdWords Conversion Tracking. Settings that apply at the conversion type level can be accessed and modified though {@code ConversionTrackerService}. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * conversionOptimizerMode


=item * effectiveConversionTrackingId


=item * usesCrossAccountConversionTracking




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

