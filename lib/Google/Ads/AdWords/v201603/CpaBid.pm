package Google::Ads::AdWords::v201603::CpaBid;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201603' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201603::Bids);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %Bids__Type_of :ATTR(:get<Bids__Type>);
my %bid_of :ATTR(:get<bid>);
my %bidSource_of :ATTR(:get<bidSource>);

__PACKAGE__->_factory(
    [ qw(        Bids__Type
        bid
        bidSource

    ) ],
    {
        'Bids__Type' => \%Bids__Type_of,
        'bid' => \%bid_of,
        'bidSource' => \%bidSource_of,
    },
    {
        'Bids__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'bid' => 'Google::Ads::AdWords::v201603::Money',
        'bidSource' => 'Google::Ads::AdWords::v201603::BidSource',
    },
    {

        'Bids__Type' => 'Bids.Type',
        'bid' => 'bid',
        'bidSource' => 'bidSource',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201603::CpaBid

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CpaBid from the namespace https://adwords.google.com/api/adwords/cm/v201603.

CPA Bids. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * bid


=item * bidSource




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

