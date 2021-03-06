package Shipment::FedEx::WSDL::TrackTypes::DeliveryOptionEligibilityDetail;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://fedex.com/ws/track/v9' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Option_of :ATTR(:get<Option>);
my %Eligibility_of :ATTR(:get<Eligibility>);

__PACKAGE__->_factory(
    [ qw(        Option
        Eligibility

    ) ],
    {
        'Option' => \%Option_of,
        'Eligibility' => \%Eligibility_of,
    },
    {
        'Option' => 'Shipment::FedEx::WSDL::TrackTypes::DeliveryOptionType',
        'Eligibility' => 'Shipment::FedEx::WSDL::TrackTypes::EligibilityType',
    },
    {

        'Option' => 'Option',
        'Eligibility' => 'Eligibility',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::FedEx::WSDL::TrackTypes::DeliveryOptionEligibilityDetail

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
DeliveryOptionEligibilityDetail from the namespace http://fedex.com/ws/track/v9.

Details about the eligibility for a delivery option.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Option


=item * Eligibility




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::FedEx::WSDL::TrackTypes::DeliveryOptionEligibilityDetail
   Option => $some_value, # DeliveryOptionType
   Eligibility => $some_value, # EligibilityType
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

