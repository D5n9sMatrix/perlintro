#!/usr/bin/perl

# for

my $max = 1100;

# The C style for loop is rarely needed in Perl since Perl 
# provides the more friendly list scanning foreach loop.

    foreach (@array) {
        print "This element is $_\n";
    }

    print $list[$_] foreach 0 .. $max;

# you don't have to use the default $_ either...
    foreach my $key (keys %hash) {
        print "The value of $key is $hash{$key}\n";
    }

#    The foreach keyword is actually a synonym for the for keyword. 
# See "Foreach Loops" in perlsyn.
