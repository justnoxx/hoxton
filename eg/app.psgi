#!/usr/bin/env perl
use strict;
use Plack;
use Plack::Request;
use AnyEvent;

my $app = sub {
    my $env = shift;

    my $req = Plack::Request->new($env);
    my $res = $req->new_response(200);
    
    $res->body("Free Hoxton!\n");
    my $timer; $timer = AnyEvent->timer(after=>5, cb=>sub {
        undef $timer;
        warn "Time is up!\n";
    
    });
    return $res->finalize();
};

$app;

