package Google::Ads::AdWords::v201509::CustomerSyncSelector;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/ch/v201509' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %dateTimeRange_of :ATTR(:get<dateTimeRange>);
my %campaignIds_of :ATTR(:get<campaignIds>);
my %feedIds_of :ATTR(:get<feedIds>);

__PACKAGE__->_factory(
    [ qw(        dateTimeRange
        campaignIds
        feedIds

    ) ],
    {
        'dateTimeRange' => \%dateTimeRange_of,
        'campaignIds' => \%campaignIds_of,
        'feedIds' => \%feedIds_of,
    },
    {
        'dateTimeRange' => 'Google::Ads::AdWords::v201509::DateTimeRange',
        'campaignIds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'feedIds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'dateTimeRange' => 'dateTimeRange',
        'campaignIds' => 'campaignIds',
        'feedIds' => 'feedIds',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201509::CustomerSyncSelector

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CustomerSyncSelector from the namespace https://adwords.google.com/api/adwords/ch/v201509.

A filter for selecting change history data for a customer. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * dateTimeRange


=item * campaignIds


=item * feedIds




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

