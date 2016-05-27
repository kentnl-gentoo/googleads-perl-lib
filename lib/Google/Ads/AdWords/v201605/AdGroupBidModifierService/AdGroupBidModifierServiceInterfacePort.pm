package Google::Ads::AdWords::v201605::AdGroupBidModifierService::AdGroupBidModifierServiceInterfacePort;
use strict;
use warnings;
use Class::Std::Fast::Storable;
use Scalar::Util qw(blessed);
use base qw(SOAP::WSDL::Client::Base);

# only load if it hasn't been loaded before
require Google::Ads::AdWords::v201605::TypeMaps::AdGroupBidModifierService
    if not Google::Ads::AdWords::v201605::TypeMaps::AdGroupBidModifierService->can('get_class');

sub START {
    $_[0]->set_proxy('https://adwords.google.com/api/adwords/cm/v201605/AdGroupBidModifierService') if not $_[2]->{proxy};
    $_[0]->set_class_resolver('Google::Ads::AdWords::v201605::TypeMaps::AdGroupBidModifierService')
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
            parts           =>  [qw( Google::Ads::AdWords::v201605::AdGroupBidModifierService::get )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Google::Ads::AdWords::v201605::AdGroupBidModifierService::RequestHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
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
            parts           =>  [qw( Google::Ads::AdWords::v201605::AdGroupBidModifierService::mutate )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Google::Ads::AdWords::v201605::AdGroupBidModifierService::RequestHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub query {
    my ($self, $body, $header) = @_;
    die "query must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'query',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( Google::Ads::AdWords::v201605::AdGroupBidModifierService::query )],
        },
        header => {
            


           'use' => 'literal',
            namespace => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle => '',
            parts => [qw( Google::Ads::AdWords::v201605::AdGroupBidModifierService::RequestHeader )],
        },
        headerfault => {
            
        }
    }, $body, $header);
}




1;



__END__

=pod

=head1 NAME

Google::Ads::AdWords::v201605::AdGroupBidModifierService::AdGroupBidModifierServiceInterfacePort - SOAP Interface for the AdGroupBidModifierService Web Service

=head1 SYNOPSIS

 use Google::Ads::AdWords::v201605::AdGroupBidModifierService::AdGroupBidModifierServiceInterfacePort;
 my $interface = Google::Ads::AdWords::v201605::AdGroupBidModifierService::AdGroupBidModifierServiceInterfacePort->new();

 my $response;
 $response = $interface->get();
 $response = $interface->mutate();
 $response = $interface->query();



=head1 DESCRIPTION

SOAP Interface for the AdGroupBidModifierService web service
located at https://adwords.google.com/api/adwords/cm/v201605/AdGroupBidModifierService.

=head1 SERVICE AdGroupBidModifierService



=head2 Port AdGroupBidModifierServiceInterfacePort



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

Gets ad group level criterion bid modifiers. @param selector The selector specifying the {@link AdGroupBidModifier}s to return. @return A list of ad group bid modifiers. @throws ApiException when there is at least one error with the request. 

Returns a L<Google::Ads::AdWords::v201605::AdGroupBidModifierService::getResponse|Google::Ads::AdWords::v201605::AdGroupBidModifierService::getResponse> object.

 $response = $interface->get( {
    selector =>  $a_reference_to, # see Google::Ads::AdWords::v201605::Selector
  },,
 );

=head3 mutate

Adds, removes or updates ad group bid modifier overrides. @param operations The operations to apply. @return The added ad group bid modifier overrides. @throws ApiException when there is at least one error with the request. 

Returns a L<Google::Ads::AdWords::v201605::AdGroupBidModifierService::mutateResponse|Google::Ads::AdWords::v201605::AdGroupBidModifierService::mutateResponse> object.

 $response = $interface->mutate( {
    operations =>  $a_reference_to, # see Google::Ads::AdWords::v201605::AdGroupBidModifierOperation
  },,
 );

=head3 query

Returns a list of {@link AdGroupBidModifier}s that match the query. @param query The SQL-like AWQL query string. @throws ApiException when there are one or more errors with the request. 

Returns a L<Google::Ads::AdWords::v201605::AdGroupBidModifierService::queryResponse|Google::Ads::AdWords::v201605::AdGroupBidModifierService::queryResponse> object.

 $response = $interface->query( {
    query =>  $some_value, # string
  },,
 );



=head1 AUTHOR

Generated by SOAP::WSDL on Wed May 25 14:37:56 2016

=cut
