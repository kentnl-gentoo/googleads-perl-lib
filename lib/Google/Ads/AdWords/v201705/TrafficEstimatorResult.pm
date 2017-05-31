package Google::Ads::AdWords::v201705::TrafficEstimatorResult;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/o/v201705' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %campaignEstimates_of :ATTR(:get<campaignEstimates>);

__PACKAGE__->_factory(
    [ qw(        campaignEstimates

    ) ],
    {
        'campaignEstimates' => \%campaignEstimates_of,
    },
    {
        'campaignEstimates' => 'Google::Ads::AdWords::v201705::CampaignEstimate',
    },
    {

        'campaignEstimates' => 'campaignEstimates',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201705::TrafficEstimatorResult

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
TrafficEstimatorResult from the namespace https://adwords.google.com/api/adwords/o/v201705.

Contains results of traffic estimation request. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * campaignEstimates




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

