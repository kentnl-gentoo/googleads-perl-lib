package Google::Ads::AdWords::v201609::OfflineConversionFeedService::OfflineConversionFeedServiceInterfacePort;
use strict;
use warnings;
use Class::Std::Fast::Storable;
use Scalar::Util qw(blessed);
use base qw(SOAP::WSDL::Client::Base);

# only load if it hasn't been loaded before
require Google::Ads::AdWords::v201609::TypeMaps::OfflineConversionFeedService
    if not Google::Ads::AdWords::v201609::TypeMaps::OfflineConversionFeedService->can('get_class');

sub START {
    $_[0]->set_proxy('https://adwords.google.com/api/adwords/cm/v201609/OfflineConversionFeedService') if not $_[2]->{proxy};
    $_[0]->set_class_resolver('Google::Ads::AdWords::v201609::TypeMaps::OfflineConversionFeedService')
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
            parts           =>  [qw( Google::Ads::AdWords::v201609::OfflineConversionFeedService::mutate )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Google::Ads::AdWords::v201609::OfflineConversionFeedService::RequestHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}




1;



__END__

=pod

=head1 NAME

Google::Ads::AdWords::v201609::OfflineConversionFeedService::OfflineConversionFeedServiceInterfacePort - SOAP Interface for the OfflineConversionFeedService Web Service

=head1 SYNOPSIS

 use Google::Ads::AdWords::v201609::OfflineConversionFeedService::OfflineConversionFeedServiceInterfacePort;
 my $interface = Google::Ads::AdWords::v201609::OfflineConversionFeedService::OfflineConversionFeedServiceInterfacePort->new();

 my $response;
 $response = $interface->mutate();



=head1 DESCRIPTION

SOAP Interface for the OfflineConversionFeedService web service
located at https://adwords.google.com/api/adwords/cm/v201609/OfflineConversionFeedService.

=head1 SERVICE OfflineConversionFeedService



=head2 Port OfflineConversionFeedServiceInterfacePort



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

Reports an offline conversion for each entry in {@code operations}. <p> This bulk operation does not have any transactional guarantees. Some operations can succeed while others fail. <p><b>Note:</b> {@link OfflineConversionFeedOperation} supports only the {@code ADD} operator. ({@code SET} and {@code REMOVE} are not supported.) @param operations A list of offline conversion feed operations. @return The list of offline conversion feed results (in the same order as the operations). @throws {@link ApiException} if problems occurred while applying offline conversions. 

Returns a L<Google::Ads::AdWords::v201609::OfflineConversionFeedService::mutateResponse|Google::Ads::AdWords::v201609::OfflineConversionFeedService::mutateResponse> object.

 $response = $interface->mutate( {
    operations =>  $a_reference_to, # see Google::Ads::AdWords::v201609::OfflineConversionFeedOperation
  },,
 );



=head1 AUTHOR

Generated by SOAP::WSDL on Thu May 25 10:01:19 2017

=cut
