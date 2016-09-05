package Shipment::FedEx::WSDL::TrackTypes::TrackNotificationRecipientDetail;
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

my %NotificationEventsAvailable_of :ATTR(:get<NotificationEventsAvailable>);

__PACKAGE__->_factory(
    [ qw(        NotificationEventsAvailable

    ) ],
    {
        'NotificationEventsAvailable' => \%NotificationEventsAvailable_of,
    },
    {
        'NotificationEventsAvailable' => 'Shipment::FedEx::WSDL::TrackTypes::EMailNotificationEventType',
    },
    {

        'NotificationEventsAvailable' => 'NotificationEventsAvailable',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

Shipment::FedEx::WSDL::TrackTypes::TrackNotificationRecipientDetail

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
TrackNotificationRecipientDetail from the namespace http://fedex.com/ws/track/v9.

Options available for a tracking notification recipient.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * NotificationEventsAvailable




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # Shipment::FedEx::WSDL::TrackTypes::TrackNotificationRecipientDetail
   NotificationEventsAvailable => $some_value, # EMailNotificationEventType
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
