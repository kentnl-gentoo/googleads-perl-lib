package Google::Ads::AdWords::v201509::Media;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201509' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %mediaId_of :ATTR(:get<mediaId>);
my %type_of :ATTR(:get<type>);
my %referenceId_of :ATTR(:get<referenceId>);
my %dimensions_of :ATTR(:get<dimensions>);
my %urls_of :ATTR(:get<urls>);
my %mimeType_of :ATTR(:get<mimeType>);
my %sourceUrl_of :ATTR(:get<sourceUrl>);
my %name_of :ATTR(:get<name>);
my %fileSize_of :ATTR(:get<fileSize>);
my %creationTime_of :ATTR(:get<creationTime>);
my %Media__Type_of :ATTR(:get<Media__Type>);

__PACKAGE__->_factory(
    [ qw(        mediaId
        type
        referenceId
        dimensions
        urls
        mimeType
        sourceUrl
        name
        fileSize
        creationTime
        Media__Type

    ) ],
    {
        'mediaId' => \%mediaId_of,
        'type' => \%type_of,
        'referenceId' => \%referenceId_of,
        'dimensions' => \%dimensions_of,
        'urls' => \%urls_of,
        'mimeType' => \%mimeType_of,
        'sourceUrl' => \%sourceUrl_of,
        'name' => \%name_of,
        'fileSize' => \%fileSize_of,
        'creationTime' => \%creationTime_of,
        'Media__Type' => \%Media__Type_of,
    },
    {
        'mediaId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'type' => 'Google::Ads::AdWords::v201509::Media::MediaType',
        'referenceId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'dimensions' => 'Google::Ads::AdWords::v201509::Media_Size_DimensionsMapEntry',
        'urls' => 'Google::Ads::AdWords::v201509::Media_Size_StringMapEntry',
        'mimeType' => 'Google::Ads::AdWords::v201509::Media::MimeType',
        'sourceUrl' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'fileSize' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'creationTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Media__Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'mediaId' => 'mediaId',
        'type' => 'type',
        'referenceId' => 'referenceId',
        'dimensions' => 'dimensions',
        'urls' => 'urls',
        'mimeType' => 'mimeType',
        'sourceUrl' => 'sourceUrl',
        'name' => 'name',
        'fileSize' => 'fileSize',
        'creationTime' => 'creationTime',
        'Media__Type' => 'Media.Type',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201509::Media

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Media from the namespace https://adwords.google.com/api/adwords/cm/v201509.

Represents some kind of media. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * mediaId


=item * type


=item * referenceId


=item * dimensions


=item * urls


=item * mimeType


=item * sourceUrl


=item * name


=item * fileSize


=item * creationTime


=item * Media__Type

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 Media.Type




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

