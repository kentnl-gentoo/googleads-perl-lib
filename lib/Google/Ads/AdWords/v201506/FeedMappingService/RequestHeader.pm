
package Google::Ads::AdWords::v201506::FeedMappingService::RequestHeader;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201506' }

__PACKAGE__->__set_name('RequestHeader');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();
use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    Google::Ads::AdWords::v201506::SoapHeader
);

}

1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::FeedMappingService::RequestHeader

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
RequestHeader from the namespace https://adwords.google.com/api/adwords/cm/v201506.







=head1 METHODS

=head2 new

 my $element = Google::Ads::AdWords::v201506::FeedMappingService::RequestHeader->new($data);

Constructor. The following data structure may be passed to new():

 $a_reference_to, # see Google::Ads::AdWords::v201506::SoapHeader

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

