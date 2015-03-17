package Google::Ads::AdWords::v201502::Date;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201502' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %year_of :ATTR(:get<year>);
my %month_of :ATTR(:get<month>);
my %day_of :ATTR(:get<day>);

__PACKAGE__->_factory(
    [ qw(        year
        month
        day

    ) ],
    {
        'year' => \%year_of,
        'month' => \%month_of,
        'day' => \%day_of,
    },
    {
        'year' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'month' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'day' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'year' => 'year',
        'month' => 'month',
        'day' => 'day',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201502::Date

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Date from the namespace https://adwords.google.com/api/adwords/cm/v201502.

Represents a date. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * year


=item * month


=item * day




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

