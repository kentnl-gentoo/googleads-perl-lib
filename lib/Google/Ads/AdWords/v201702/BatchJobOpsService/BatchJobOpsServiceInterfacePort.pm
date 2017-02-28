package Google::Ads::AdWords::v201702::BatchJobOpsService::BatchJobOpsServiceInterfacePort;
use strict;
use warnings;
use Class::Std::Fast::Storable;
use Scalar::Util qw(blessed);
use base qw(SOAP::WSDL::Client::Base);

# only load if it hasn't been loaded before
require Google::Ads::AdWords::v201702::TypeMaps::BatchJobOpsService
    if not Google::Ads::AdWords::v201702::TypeMaps::BatchJobOpsService->can('get_class');

sub START {
    $_[0]->set_proxy('https://en.wikipedia.org/wiki/Null_device') if not $_[2]->{proxy};
    $_[0]->set_class_resolver('Google::Ads::AdWords::v201702::TypeMaps::BatchJobOpsService')
        if not $_[2]->{class_resolver};

    $_[0]->set_prefix($_[2]->{use_prefix}) if exists $_[2]->{use_prefix};
}

sub mutate {
    my ($self, $body, $header) = @_;
    die "mutate must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'mutate',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Google::Ads::AdWords::v201702::BatchJobOpsService::mutate )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}




1;



__END__

=pod

=head1 NAME

Google::Ads::AdWords::v201702::BatchJobOpsService::BatchJobOpsServiceInterfacePort - SOAP Interface for the BatchJobOpsService Web Service

=head1 SYNOPSIS

 use Google::Ads::AdWords::v201702::BatchJobOpsService::BatchJobOpsServiceInterfacePort;
 my $interface = Google::Ads::AdWords::v201702::BatchJobOpsService::BatchJobOpsServiceInterfacePort->new();

 my $response;
 $response = $interface->mutate();



=head1 DESCRIPTION

SOAP Interface for the BatchJobOpsService web service
located at https://en.wikipedia.org/wiki/Null_device.

=head1 SERVICE BatchJobOpsService



=head2 Port BatchJobOpsServiceInterfacePort



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



=head3 mutate



Returns a L<Google::Ads::AdWords::v201702::BatchJobOpsService::mutateResponse|Google::Ads::AdWords::v201702::BatchJobOpsService::mutateResponse> object.

 $response = $interface->mutate( {
    operations =>  $a_reference_to, # see Google::Ads::AdWords::v201702::Operation
  },,
 );



=head1 AUTHOR

Generated by SOAP::WSDL on Mon Feb 27 23:13:36 2017

=cut
