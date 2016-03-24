package Google::Ads::AdWords::v201603::Feed;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201603' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %id_of :ATTR(:get<id>);
my %name_of :ATTR(:get<name>);
my %attributes_of :ATTR(:get<attributes>);
my %status_of :ATTR(:get<status>);
my %origin_of :ATTR(:get<origin>);
my %systemFeedGenerationData_of :ATTR(:get<systemFeedGenerationData>);

__PACKAGE__->_factory(
    [ qw(        id
        name
        attributes
        status
        origin
        systemFeedGenerationData

    ) ],
    {
        'id' => \%id_of,
        'name' => \%name_of,
        'attributes' => \%attributes_of,
        'status' => \%status_of,
        'origin' => \%origin_of,
        'systemFeedGenerationData' => \%systemFeedGenerationData_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'attributes' => 'Google::Ads::AdWords::v201603::FeedAttribute',
        'status' => 'Google::Ads::AdWords::v201603::Feed::Status',
        'origin' => 'Google::Ads::AdWords::v201603::Feed::Origin',
        'systemFeedGenerationData' => 'Google::Ads::AdWords::v201603::SystemFeedGenerationData',
    },
    {

        'id' => 'id',
        'name' => 'name',
        'attributes' => 'attributes',
        'status' => 'status',
        'origin' => 'origin',
        'systemFeedGenerationData' => 'systemFeedGenerationData',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201603::Feed

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Feed from the namespace https://adwords.google.com/api/adwords/cm/v201603.

A Feed identifies a source of data and its schema. The data for the Feed can either be user-entered via the FeedItemService or system-generated, in which case the data is provided automatically. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * id


=item * name


=item * attributes


=item * status


=item * origin


=item * systemFeedGenerationData




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

