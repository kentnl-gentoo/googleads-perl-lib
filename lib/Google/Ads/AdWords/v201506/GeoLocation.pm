package Google::Ads::AdWords::v201506::GeoLocation;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %geoPoint_of :ATTR(:get<geoPoint>);
my %address_of :ATTR(:get<address>);
my %encodedLocation_of :ATTR(:get<encodedLocation>);
my %GeoLocation__Type_of :ATTR(:get<GeoLocation__Type>);

__PACKAGE__->_factory(
    [ qw(        geoPoint
        address
        encodedLocation
        GeoLocation__Type

    ) ],
    {
        'geoPoint' => \%geoPoint_of,
        'address' => \%address_of,
        'encodedLocation' => \%encodedLocation_of,
        'GeoLocation__Type' => \%GeoLocation__Type_of,
    },
    {
        'geoPoint' => 'Google::Ads::AdWords::v201506::GeoPoint',
        'address' => 'Google::Ads::AdWords::v201506::Address',
        'encodedLocation' => 'SOAP::WSDL::XSD::Typelib::Builtin::base64Binary',
        'GeoLocation__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'geoPoint' => 'geoPoint',
        'address' => 'address',
        'encodedLocation' => 'encodedLocation',
        'GeoLocation__Type' => 'GeoLocation.Type',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::GeoLocation

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
GeoLocation from the namespace https://adwords.google.com/api/adwords/cm/v201506.

Class representing a location with its geographic coordinates. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * geoPoint


=item * address


=item * encodedLocation


=item * GeoLocation__Type

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 GeoLocation.Type




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

