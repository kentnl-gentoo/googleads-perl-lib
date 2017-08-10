package Google::Ads::AdWords::v201708::RuleItem;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/rm/v201708' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %DateRuleItem_of :ATTR(:get<DateRuleItem>);
my %NumberRuleItem_of :ATTR(:get<NumberRuleItem>);
my %StringRuleItem_of :ATTR(:get<StringRuleItem>);

__PACKAGE__->_factory(
    [ qw(        DateRuleItem
        NumberRuleItem
        StringRuleItem

    ) ],
    {
        'DateRuleItem' => \%DateRuleItem_of,
        'NumberRuleItem' => \%NumberRuleItem_of,
        'StringRuleItem' => \%StringRuleItem_of,
    },
    {
        'DateRuleItem' => 'Google::Ads::AdWords::v201708::DateRuleItem',
        'NumberRuleItem' => 'Google::Ads::AdWords::v201708::NumberRuleItem',
        'StringRuleItem' => 'Google::Ads::AdWords::v201708::StringRuleItem',
    },
    {

        'DateRuleItem' => 'DateRuleItem',
        'NumberRuleItem' => 'NumberRuleItem',
        'StringRuleItem' => 'StringRuleItem',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201708::RuleItem

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
RuleItem from the namespace https://adwords.google.com/api/adwords/rm/v201708.

An atomic rule fragment. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * DateRuleItem


=item * NumberRuleItem


=item * StringRuleItem




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

