#!/usr/bin/env perl
use strict;
use Plack;
use Plack::Request;

my $app = sub {
    my $env = shift;

    my $req = Plack::Request->new($env);
    my $res = $req->new_response(200);
    $res->body("Free Hoxton!\n");
    return $res->finalize();
};

$app;

