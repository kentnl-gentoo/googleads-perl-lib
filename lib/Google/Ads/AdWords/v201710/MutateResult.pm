package Google::Ads::AdWords::v201710::MutateResult;
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

my %result_of :ATTR(:get<result>);
my %errorList_of :ATTR(:get<errorList>);
my %index_of :ATTR(:get<index>);

__PACKAGE__->_factory(
    [ qw(        result
        errorList
        index

    ) ],
    {
        'result' => \%result_of,
        'errorList' => \%errorList_of,
        'index' => \%index_of,
    },
    {
        'result' => 'Google::Ads::AdWords::v201710::Operand',
        'errorList' => 'Google::Ads::AdWords::v201710::ErrorList',
        'index' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'result' => 'result',
        'errorList' => 'errorList',
        'index' => 'index',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201710::MutateResult

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
MutateResult from the namespace https://adwords.google.com/api/adwords/cm/v201710.

The result of a single mutate operation. Contains either the resulting Operand or the error(s) that occurred when attempting the mutate. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * result


=item * errorList


=item * index




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

