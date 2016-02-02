package Google::Ads::AdWords::v201601::BatchJob;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201601' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %id_of :ATTR(:get<id>);
my %status_of :ATTR(:get<status>);
my %progressStats_of :ATTR(:get<progressStats>);
my %uploadUrl_of :ATTR(:get<uploadUrl>);
my %downloadUrl_of :ATTR(:get<downloadUrl>);
my %processingErrors_of :ATTR(:get<processingErrors>);
my %diskUsageQuotaBalance_of :ATTR(:get<diskUsageQuotaBalance>);

__PACKAGE__->_factory(
    [ qw(        id
        status
        progressStats
        uploadUrl
        downloadUrl
        processingErrors
        diskUsageQuotaBalance

    ) ],
    {
        'id' => \%id_of,
        'status' => \%status_of,
        'progressStats' => \%progressStats_of,
        'uploadUrl' => \%uploadUrl_of,
        'downloadUrl' => \%downloadUrl_of,
        'processingErrors' => \%processingErrors_of,
        'diskUsageQuotaBalance' => \%diskUsageQuotaBalance_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'status' => 'Google::Ads::AdWords::v201601::BatchJobStatus',
        'progressStats' => 'Google::Ads::AdWords::v201601::ProgressStats',
        'uploadUrl' => 'Google::Ads::AdWords::v201601::TemporaryUrl',
        'downloadUrl' => 'Google::Ads::AdWords::v201601::TemporaryUrl',
        'processingErrors' => 'Google::Ads::AdWords::v201601::BatchJobProcessingError',
        'diskUsageQuotaBalance' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'id' => 'id',
        'status' => 'status',
        'progressStats' => 'progressStats',
        'uploadUrl' => 'uploadUrl',
        'downloadUrl' => 'downloadUrl',
        'processingErrors' => 'processingErrors',
        'diskUsageQuotaBalance' => 'diskUsageQuotaBalance',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201601::BatchJob

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
BatchJob from the namespace https://adwords.google.com/api/adwords/cm/v201601.

Represents a large mutation job. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * id


=item * status


=item * progressStats


=item * uploadUrl


=item * downloadUrl


=item * processingErrors


=item * diskUsageQuotaBalance




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

