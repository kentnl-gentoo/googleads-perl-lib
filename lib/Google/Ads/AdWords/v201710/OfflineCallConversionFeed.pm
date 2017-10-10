package Google::Ads::AdWords::v201710::OfflineCallConversionFeed;
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

my %callerId_of :ATTR(:get<callerId>);
my %callStartTime_of :ATTR(:get<callStartTime>);
my %conversionName_of :ATTR(:get<conversionName>);
my %conversionTime_of :ATTR(:get<conversionTime>);
my %conversionValue_of :ATTR(:get<conversionValue>);
my %conversionCurrencyCode_of :ATTR(:get<conversionCurrencyCode>);

__PACKAGE__->_factory(
    [ qw(        callerId
        callStartTime
        conversionName
        conversionTime
        conversionValue
        conversionCurrencyCode

    ) ],
    {
        'callerId' => \%callerId_of,
        'callStartTime' => \%callStartTime_of,
        'conversionName' => \%conversionName_of,
        'conversionTime' => \%conversionTime_of,
        'conversionValue' => \%conversionValue_of,
        'conversionCurrencyCode' => \%conversionCurrencyCode_of,
    },
    {
        'callerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'callStartTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'conversionName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'conversionTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'conversionValue' => 'SOAP::WSDL::XSD::Typelib::Builtin::double',
        'conversionCurrencyCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'callerId' => 'callerId',
        'callStartTime' => 'callStartTime',
        'conversionName' => 'conversionName',
        'conversionTime' => 'conversionTime',
        'conversionValue' => 'conversionValue',
        'conversionCurrencyCode' => 'conversionCurrencyCode',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201710::OfflineCallConversionFeed

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
OfflineCallConversionFeed from the namespace https://adwords.google.com/api/adwords/cm/v201710.

Represents an entire record in the offline call conversions feed that the advertiser uploads. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * callerId


=item * callStartTime


=item * conversionName


=item * conversionTime


=item * conversionValue


=item * conversionCurrencyCode




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

