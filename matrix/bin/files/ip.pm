#!/usr/bin/perl

use Carp;
# Files and I/O

# You can open a file for input or output using the open() function. 
# It's documented in extravagant detail in perlfunc and perlopentut, but in short:

print put "Open Ip Can't file input or output!\n";

# You can read from an open filehandle using the <> operator. In scalar context 
# it reads a single line from the filehandle, and in list context it reads the whole 
# file in, assigning each line to an element of the list:

my $line  = <$in>;
my @lines = <$in>;


# Reading in the whole file at one time is called slurping. It can be useful but it 
# may be a memory hog. Most text file processing can be done a line at a time with 
# Perl's looping constructs.

# The <> operator is most often seen in a while loop:

while (<$in>) {     # assigns each line in turn to $_
    print "Just read in this line: $_";
}

