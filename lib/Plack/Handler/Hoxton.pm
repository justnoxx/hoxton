package Plack::Handler::Hoxton;
use strict;

sub new {
    my $class = shift;
    bless {@_}, $class;
}

sub run {
    my ($self, $app) = @_;

    my $class = 'Hoxton::Server';
    eval "require $class";
    die if $@;

    $class->new(%{$self})->run($app);
}
    

1;

__END__

=head1 NAME

Plack::Handler::Hoxton - Adapter for Hoxton

=head1 SYNOPSIS

  plackup -s Hoxton --port 9090

  # with start_server
  start_server --port=9090 plackup -s Hoxton 

=head1 DESCRIPTION

Author of this code is @miyagawa, right now it just copypasted from twiggy and
renamed for name-clashes avoidance.

=cut
