package Google::Ads::AdWords::v201509::BudgetOrder;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/billing/v201509' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %billingAccountId_of :ATTR(:get<billingAccountId>);
my %id_of :ATTR(:get<id>);
my %billingAccountName_of :ATTR(:get<billingAccountName>);
my %poNumber_of :ATTR(:get<poNumber>);
my %budgetOrderName_of :ATTR(:get<budgetOrderName>);
my %primaryBillingId_of :ATTR(:get<primaryBillingId>);
my %secondaryBillingId_of :ATTR(:get<secondaryBillingId>);
my %spendingLimit_of :ATTR(:get<spendingLimit>);
my %startDateTime_of :ATTR(:get<startDateTime>);
my %endDateTime_of :ATTR(:get<endDateTime>);
my %lastRequest_of :ATTR(:get<lastRequest>);

__PACKAGE__->_factory(
    [ qw(        billingAccountId
        id
        billingAccountName
        poNumber
        budgetOrderName
        primaryBillingId
        secondaryBillingId
        spendingLimit
        startDateTime
        endDateTime
        lastRequest

    ) ],
    {
        'billingAccountId' => \%billingAccountId_of,
        'id' => \%id_of,
        'billingAccountName' => \%billingAccountName_of,
        'poNumber' => \%poNumber_of,
        'budgetOrderName' => \%budgetOrderName_of,
        'primaryBillingId' => \%primaryBillingId_of,
        'secondaryBillingId' => \%secondaryBillingId_of,
        'spendingLimit' => \%spendingLimit_of,
        'startDateTime' => \%startDateTime_of,
        'endDateTime' => \%endDateTime_of,
        'lastRequest' => \%lastRequest_of,
    },
    {
        'billingAccountId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'billingAccountName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'poNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'budgetOrderName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'primaryBillingId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'secondaryBillingId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'spendingLimit' => 'Google::Ads::AdWords::v201509::Money',
        'startDateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'endDateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'lastRequest' => 'Google::Ads::AdWords::v201509::BudgetOrderRequest',
    },
    {

        'billingAccountId' => 'billingAccountId',
        'id' => 'id',
        'billingAccountName' => 'billingAccountName',
        'poNumber' => 'poNumber',
        'budgetOrderName' => 'budgetOrderName',
        'primaryBillingId' => 'primaryBillingId',
        'secondaryBillingId' => 'secondaryBillingId',
        'spendingLimit' => 'spendingLimit',
        'startDateTime' => 'startDateTime',
        'endDateTime' => 'endDateTime',
        'lastRequest' => 'lastRequest',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201509::BudgetOrder

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
BudgetOrder from the namespace https://adwords.google.com/api/adwords/billing/v201509.

A {@link BudgetOrder} links an account wide budget with a {@link BillingAccount}. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * billingAccountId


=item * id


=item * billingAccountName


=item * poNumber


=item * budgetOrderName


=item * primaryBillingId


=item * secondaryBillingId


=item * spendingLimit


=item * startDateTime


=item * endDateTime


=item * lastRequest




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

