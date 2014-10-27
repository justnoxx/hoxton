=head1 NAME

Hoxton

=head2 DESCRIPTION

Simple, but cool and fast PSGI server.
This server based on AnyEvent::TCP::Server.
AnyEvent::TCP::Server is fast and fully-loaded asynchronous

Now, the Hoxton::Server is just a little updated Twiggy. But Twiggy with
changed engine(AnyEvent::Socket::tcp_server to AnyEvent::TCP::Server).
Author of Hoxton::Server --- @miyagawa
=cut

package Hoxton;

use strict;
use warnings;
use Hoxton::Server;

our $VERSION = 0.01;

1;

__END__

