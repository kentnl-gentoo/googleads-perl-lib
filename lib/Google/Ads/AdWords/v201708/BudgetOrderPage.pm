package Google::Ads::AdWords::v201708::BudgetOrderPage;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/billing/v201708' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}


use base qw(Google::Ads::AdWords::v201708::Page);
# Variety: sequence
use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %totalNumEntries_of :ATTR(:get<totalNumEntries>);
my %Page__Type_of :ATTR(:get<Page__Type>);
my %entries_of :ATTR(:get<entries>);

__PACKAGE__->_factory(
    [ qw(        totalNumEntries
        Page__Type
        entries

    ) ],
    {
        'totalNumEntries' => \%totalNumEntries_of,
        'Page__Type' => \%Page__Type_of,
        'entries' => \%entries_of,
    },
    {
        'totalNumEntries' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Page__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'entries' => 'Google::Ads::AdWords::v201708::BudgetOrder',
    },
    {

        'totalNumEntries' => 'totalNumEntries',
        'Page__Type' => 'Page.Type',
        'entries' => 'entries',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201708::BudgetOrderPage

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
BudgetOrderPage from the namespace https://adwords.google.com/api/adwords/billing/v201708.

A page of {@link BudgetOrder}s from {@link BudgetOrderService#get} method. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * entries




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

