package Google::Ads::AdWords::v201708::AdGroupAdLabel;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201708' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %adGroupId_of :ATTR(:get<adGroupId>);
my %adId_of :ATTR(:get<adId>);
my %labelId_of :ATTR(:get<labelId>);

__PACKAGE__->_factory(
    [ qw(        adGroupId
        adId
        labelId

    ) ],
    {
        'adGroupId' => \%adGroupId_of,
        'adId' => \%adId_of,
        'labelId' => \%labelId_of,
    },
    {
        'adGroupId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'adId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'labelId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'adGroupId' => 'adGroupId',
        'adId' => 'adId',
        'labelId' => 'labelId',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201708::AdGroupAdLabel

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AdGroupAdLabel from the namespace https://adwords.google.com/api/adwords/cm/v201708.

Manages the labels associated with an AdGroupAd. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * adGroupId


=item * adId


=item * labelId




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

