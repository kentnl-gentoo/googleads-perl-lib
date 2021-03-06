package Google::Ads::AdWords::v201708::PolicyTopicEntry;
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

my %policyTopicEntryType_of :ATTR(:get<policyTopicEntryType>);
my %policyTopicEvidences_of :ATTR(:get<policyTopicEvidences>);
my %policyTopicConstraints_of :ATTR(:get<policyTopicConstraints>);
my %policyTopicId_of :ATTR(:get<policyTopicId>);
my %policyTopicName_of :ATTR(:get<policyTopicName>);

__PACKAGE__->_factory(
    [ qw(        policyTopicEntryType
        policyTopicEvidences
        policyTopicConstraints
        policyTopicId
        policyTopicName

    ) ],
    {
        'policyTopicEntryType' => \%policyTopicEntryType_of,
        'policyTopicEvidences' => \%policyTopicEvidences_of,
        'policyTopicConstraints' => \%policyTopicConstraints_of,
        'policyTopicId' => \%policyTopicId_of,
        'policyTopicName' => \%policyTopicName_of,
    },
    {
        'policyTopicEntryType' => 'Google::Ads::AdWords::v201708::PolicyTopicEntryType',
        'policyTopicEvidences' => 'Google::Ads::AdWords::v201708::PolicyTopicEvidence',
        'policyTopicConstraints' => 'Google::Ads::AdWords::v201708::PolicyTopicConstraint',
        'policyTopicId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'policyTopicName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'policyTopicEntryType' => 'policyTopicEntryType',
        'policyTopicEvidences' => 'policyTopicEvidences',
        'policyTopicConstraints' => 'policyTopicConstraints',
        'policyTopicId' => 'policyTopicId',
        'policyTopicName' => 'policyTopicName',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201708::PolicyTopicEntry

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PolicyTopicEntry from the namespace https://adwords.google.com/api/adwords/cm/v201708.

Contains Ads Policy decisions. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * policyTopicEntryType


=item * policyTopicEvidences


=item * policyTopicConstraints


=item * policyTopicId


=item * policyTopicName




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

