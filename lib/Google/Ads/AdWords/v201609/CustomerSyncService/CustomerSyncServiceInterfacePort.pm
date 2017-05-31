package Google::Ads::AdWords::v201609::CustomerSyncService::CustomerSyncServiceInterfacePort;
use strict;
use warnings;
use Class::Std::Fast::Storable;
use Scalar::Util qw(blessed);
use base qw(SOAP::WSDL::Client::Base);

# only load if it hasn't been loaded before
require Google::Ads::AdWords::v201609::TypeMaps::CustomerSyncService
    if not Google::Ads::AdWords::v201609::TypeMaps::CustomerSyncService->can('get_class');

sub START {
    $_[0]->set_proxy('https://adwords.google.com/api/adwords/ch/v201609/CustomerSyncService') if not $_[2]->{proxy};
    $_[0]->set_class_resolver('Google::Ads::AdWords::v201609::TypeMaps::CustomerSyncService')
        if not $_[2]->{class_resolver};

    $_[0]->set_prefix($_[2]->{use_prefix}) if exists $_[2]->{use_prefix};
}

sub get {
    my ($self, $body, $header) = @_;
    die "get must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'get',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Google::Ads::AdWords::v201609::CustomerSyncService::get )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Google::Ads::AdWords::v201609::CustomerSyncService::RequestHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}




1;



__END__

=pod

=head1 NAME

Google::Ads::AdWords::v201609::CustomerSyncService::CustomerSyncServiceInterfacePort - SOAP Interface for the CustomerSyncService Web Service

=head1 SYNOPSIS

 use Google::Ads::AdWords::v201609::CustomerSyncService::CustomerSyncServiceInterfacePort;
 my $interface = Google::Ads::AdWords::v201609::CustomerSyncService::CustomerSyncServiceInterfacePort->new();

 my $response;
 $response = $interface->get();



=head1 DESCRIPTION

SOAP Interface for the CustomerSyncService web service
located at https://adwords.google.com/api/adwords/ch/v201609/CustomerSyncService.

=head1 SERVICE CustomerSyncService



=head2 Port CustomerSyncServiceInterfacePort



=head1 METHODS

=head2 General methods

=head3 new

Constructor.

All arguments are forwarded to L<SOAP::WSDL::Client|SOAP::WSDL::Client>.

=head2 SOAP Service methods

Method synopsis is displayed with hash refs as parameters.

The commented class names in the method's parameters denote that objects
of the corresponding class can be passed instead of the marked hash ref.

You may pass any combination of objects, hash and list refs to these
methods, as long as you meet the structure.

List items (i.e. multiple occurences) are not displayed in the synopsis.
You may generally pass a list ref of hash refs (or objects) instead of a hash
ref - this may result in invalid XML if used improperly, though. Note that
SOAP::WSDL always expects list references at maximum depth position.

XML attributes are not displayed in this synopsis and cannot be set using
hash refs. See the respective class' documentation for additional information.



=head3 get

Returns information about changed entities inside a customer's account. @param selector Specifies the filter for selecting changehistory events for a customer. @return A Customer->Campaign->AdGroup hierarchy containing information about the objects changed at each level. All Campaigns that are requested in the selector will be returned, regardless of whether or not they have changed, but unchanged AdGroups will be ignored. 

Returns a L<Google::Ads::AdWords::v201609::CustomerSyncService::getResponse|Google::Ads::AdWords::v201609::CustomerSyncService::getResponse> object.

 $response = $interface->get( {
    selector =>  $a_reference_to, # see Google::Ads::AdWords::v201609::CustomerSyncSelector
  },,
 );



=head1 AUTHOR

Generated by SOAP::WSDL on Thu May 25 09:58:30 2017

=cut
