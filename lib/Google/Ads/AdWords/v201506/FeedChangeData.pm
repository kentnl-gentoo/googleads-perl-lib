package Google::Ads::AdWords::v201506::FeedChangeData;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'https://adwords.google.com/api/adwords/ch/v201506' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(Google::Ads::SOAP::Typelib::ComplexType);

{ # BLOCK to scope variables

my %feedId_of :ATTR(:get<feedId>);
my %feedChangeStatus_of :ATTR(:get<feedChangeStatus>);
my %changedFeedItems_of :ATTR(:get<changedFeedItems>);
my %removedFeedItems_of :ATTR(:get<removedFeedItems>);

__PACKAGE__->_factory(
    [ qw(        feedId
        feedChangeStatus
        changedFeedItems
        removedFeedItems

    ) ],
    {
        'feedId' => \%feedId_of,
        'feedChangeStatus' => \%feedChangeStatus_of,
        'changedFeedItems' => \%changedFeedItems_of,
        'removedFeedItems' => \%removedFeedItems_of,
    },
    {
        'feedId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'feedChangeStatus' => 'Google::Ads::AdWords::v201506::ChangeStatus',
        'changedFeedItems' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
        'removedFeedItems' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
    },
    {

        'feedId' => 'feedId',
        'feedChangeStatus' => 'feedChangeStatus',
        'changedFeedItems' => 'changedFeedItems',
        'removedFeedItems' => 'removedFeedItems',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Google::Ads::AdWords::v201506::FeedChangeData

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
FeedChangeData from the namespace https://adwords.google.com/api/adwords/ch/v201506.

Holds information about a changed feed and any feeds items within the feed. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * feedId


=item * feedChangeStatus


=item * changedFeedItems


=item * removedFeedItems




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():






=head1 AUTHOR

Generated by SOAP::WSDL

=cut

