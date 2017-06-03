package Google::Ads::AdWords::v201702::QualityInfo;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201702' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %qualityScore_of :ATTR(:get<qualityScore>);

__PACKAGE__->_factory(
    [ qw(        qualityScore

    ) ],
    {
        'qualityScore' => \%qualityScore_of,
    },
    {
        'qualityScore' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'qualityScore' => 'qualityScore',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201702::QualityInfo

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
QualityInfo from the namespace https://adwords.google.com/api/adwords/cm/v201702.

Container for criterion quality information. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * qualityScore




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut
