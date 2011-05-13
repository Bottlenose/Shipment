package Shipment::FedEx::WSDL::RateTypes::Payor;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://fedex.com/ws/rate/v9' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %AccountNumber_of :ATTR(:get<AccountNumber>);
my %CountryCode_of :ATTR(:get<CountryCode>);

__PACKAGE__->_factory(
    [ qw(        AccountNumber
        CountryCode

    ) ],
    {
        'AccountNumber' => \%AccountNumber_of,
        'CountryCode' => \%CountryCode_of,
    },
    {
        'AccountNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'CountryCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'AccountNumber' => 'AccountNumber',
        'CountryCode' => 'CountryCode',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::FedEx::WSDL::RateTypes::Payor

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Payor from the namespace http://fedex.com/ws/rate/v9.

Descriptive data identifying the party responsible for payment for a service.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AccountNumber (min/maxOccurs: 1/1)


=item * CountryCode (min/maxOccurs: 0/1)




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::FedEx::WSDL::RateTypes::Payor
   AccountNumber =>  $some_value, # string
   CountryCode =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
