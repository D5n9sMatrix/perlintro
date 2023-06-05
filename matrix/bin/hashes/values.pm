#!/usr/bin/perl

Hashes:

#    A hash represents a set of key/value pairs:

    my $fruit_markets = ("apple", "red", "banana", "yellow");

#    You can use whitespace and the => operator to lay them out more nicely:

    my %fruit_color = (
        apple  => "red",
        banana => "yellow",
    );

#    To get at hash elements:

    $fruit_color{"apple"};           # gives "red"

#    You can get at lists of keys and values with keys() and values().

    my @fruits = keys %fruit_color;
    my @colors = values %fruit_color;

#    Hashes have no particular internal order, though you can sort the keys and loop through 
# them.

#    Just like special scalars and arrays, there are also special hashes. The most well known 
# of these is %ENV which contains environment variables. Read all about it (and other 
# special variables) in perlvar.
