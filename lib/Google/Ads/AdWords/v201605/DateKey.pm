package Google::Ads::AdWords::v201605::DateKey;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/rm/v201605' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %name_of :ATTR(:get<name>);

__PACKAGE__->_factory(
    [ qw(        name

    ) ],
    {
        'name' => \%name_of,
    },
    {
        'name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'name' => 'name',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201605::DateKey

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
DateKey from the namespace https://adwords.google.com/api/adwords/rm/v201605.

A custom parameter of date type. Supported date formats are listed as follows: <ul> <li> 2011-03-31T12:20:19-05:00 <li> 03/31/2011 12:20:19-05:00 <li> Fri, Mar 31 2011 12:20:19 EST <li> Fri, Mar 31 12:20:19 EST 2011 </ul> <p> If time zone information is not present in the value, it is assumed to be PST. If time value is not specified, it defaults to midnight of the day. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * name




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

