package Google::Ads::AdWords::v201509::CampaignLabel;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201509' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %campaignId_of :ATTR(:get<campaignId>);
my %labelId_of :ATTR(:get<labelId>);

__PACKAGE__->_factory(
    [ qw(        campaignId
        labelId

    ) ],
    {
        'campaignId' => \%campaignId_of,
        'labelId' => \%labelId_of,
    },
    {
        'campaignId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'labelId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'campaignId' => 'campaignId',
        'labelId' => 'labelId',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201509::CampaignLabel

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CampaignLabel from the namespace https://adwords.google.com/api/adwords/cm/v201509.

Manages the labels associated with a campaign. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * campaignId


=item * labelId




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

