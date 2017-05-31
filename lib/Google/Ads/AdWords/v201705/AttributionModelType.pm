package Google::Ads::AdWords::v201705::AttributionModelType;
use strict;
use warnings;

sub get_xmlns { 'https://adwords.google.com/api/adwords/cm/v201705'};

# derivation by restriction
use base qw(
    SOAP::WSDL::XSD::Typelib::Builtin::string);



1;

__END__

=pod

=head1 NAME



=head1 DESCRIPTION

Perl data type class for the XML Schema defined simpleType
AttributionModelType from the namespace https://adwords.google.com/api/adwords/cm/v201705.

Attribution models describing how to distribute credit for a particular conversion across potentially many prior interactions. See https://support.google.com/adwords/answer/6259715 for more information about attribution modeling in AdWords. 



This clase is derived from 
   SOAP::WSDL::XSD::Typelib::Builtin::string
. SOAP::WSDL's schema implementation does not validate data, so you can use it exactly
like it's base type.

# Description of restrictions not implemented yet.


=head1 METHODS

=head2 new

Constructor.

=head2 get_value / set_value

Getter and setter for the simpleType's value.

=head1 OVERLOADING

Depending on the simple type's base type, the following operations are overloaded

 Stringification
 Numerification
 Boolification

Check L<SOAP::WSDL::XSD::Typelib::Builtin> for more information.

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

