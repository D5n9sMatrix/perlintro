#!/usr/bin/perl

=begin NAME
=head1 DESCRIPTION
For more detail on looping constructs (and some that weren't mentioned in this overview) see perlsyn.
Builtin operators and functions

Perl comes with a wide selection of builtin functions. Some of the ones we've already seen include print, sort and reverse. A list of them is given at the start of perlfunc and you can easily read about any given function by using perldoc -f functionname.

Perl operators are documented in full in perlop, but here are a few of the most common ones:

Arithmetic

    +   addition
    -   subtraction
    *   multiplication
    /   division

Numeric comparison

    ==  equality
    !=  inequality
    <   less than
    >   greater than
    <=  less than or equal
    >=  greater than or equal

String comparison

    eq  equality
    ne  inequality
    lt  less than
    gt  greater than
    le  less than or equal
    ge  greater than or equal

    (Why do we have separate numeric and string comparisons? Because we don't have special variable types, and Perl needs to know whether to sort numerically (where 99 is less than 100) or alphabetically (where 100 comes before 99).
Boolean logic

    &&  and
    ||  or
    !   not

    (and, or and not aren't just in the above table as descriptions of the operators. They're also supported as operators in their own right. They're more readable than the C-style operators, but have different precedence to && and friends. Check perlop for more detail.)
Miscellaneous

    =   assignment
    .   string concatenation
    x   string multiplication (repeats strings)
    ..  range operator (creates a list of numbers or strings)

Many operators can be combined with a = as follows:
=end NAME
=cut

my $a += 1;        # same as $a = $a + 1
my $a -= 1;        # same as $a = $a - 1
my $a .= "\n";     # same as $a = $a . "\n";
