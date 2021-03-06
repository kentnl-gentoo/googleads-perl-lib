package Google::Ads::AdWords::v201708::Member;
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

my %hashedEmail_of :ATTR(:get<hashedEmail>);
my %mobileId_of :ATTR(:get<mobileId>);
my %addressInfo_of :ATTR(:get<addressInfo>);
my %userId_of :ATTR(:get<userId>);

__PACKAGE__->_factory(
    [ qw(        hashedEmail
        mobileId
        addressInfo
        userId

    ) ],
    {
        'hashedEmail' => \%hashedEmail_of,
        'mobileId' => \%mobileId_of,
        'addressInfo' => \%addressInfo_of,
        'userId' => \%userId_of,
    },
    {
        'hashedEmail' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'mobileId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'addressInfo' => 'Google::Ads::AdWords::v201708::AddressInfo',
        'userId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'hashedEmail' => 'hashedEmail',
        'mobileId' => 'mobileId',
        'addressInfo' => 'addressInfo',
        'userId' => 'userId',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201708::Member

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Member from the namespace https://adwords.google.com/api/adwords/rm/v201708.

Class that holds user list member identifiers. Following types of member identifier are supported: <ul> <li>Contact info(email, address) <li>Mobile advertising id <li>User IDs generated and assigned by advertiser </ul> One list could only be uploaded with one type of data. Once it's uploaded, the user list will not accept other type of data. Multiple member identifiers of the same type for the same member could be provided at the same time. At least one identifier is required to be provided. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * hashedEmail


=item * mobileId


=item * addressInfo


=item * userId




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

