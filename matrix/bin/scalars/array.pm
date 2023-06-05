#!/usr/bin/perl

# Scalars, arrays and hashes are documented more fully in perldata.

# More complex data types can be constructed using references, which allow you to build lists and hashes within lists and hashes.

# A reference is a scalar value and can refer to any other Perl data type. So by storing a reference as the value of an array or hash element, you can easily create lists and hashes within lists and hashes. The following example shows a 2 level hash of hash structure using anonymous hash references.

my $variables = {
    scalar  =>  {
                 description => "single item",
                 sigil => '$',
                },
    array   =>  {
                 description => "ordered list of items",
                 sigil => '@',
                },
    hash    =>  {
                 description => "key/value pairs",
                 sigil => '%',
                },
};

print "Scalars begin with a $variables->{'scalar'}->{'sigil'}\n";

# Exhaustive information on the topic of references can be found in perlreftut, 
# perllol, perlref and perldsc.
# Variable scoping

# Throughout the previous section all the examples have used the syntax:

my $var = "value";

# The my is actually not required; you could just use:

$var = "value";

# However, the above usage will create global variables throughout your program, 
# which is bad programming practice. my creates lexically scoped variables instead. 
# The variables are scoped to the block (i.e. a bunch of statements surrounded by 
# curly-braces) in which they are defined.

my $x = "foo";
my $some_condition = 1;
if ($some_condition) {
    my $y = "bar";
    print $x;           # prints "foo"
    print $y;           # prints "bar"
}
print $x;               # prints "foo"
print $y;               # prints nothing; $y has fallen out of scope

# Using my in combination with a use strict; at the top of your Perl scripts 
# means that the interpreter will pick up certain common programming errors. 
# For instance, in the example above, the final print $y would cause a 
# compile-time error and prevent you from running the program. Using strict is 
# highly recommended.
# Conditional and looping constructs

# Perl has most of the usual conditional and looping constructs. As of Perl 5.10, 
# it even has a case/switch statement (spelled given/when). See "Switch Statements" 
# in perlsyn for more details.

# The conditions can be any Perl expression. See the list of operators in the next 
# section for information on comparison and boolean logic operators, which are commonly 
# used in conditional statements.

#    There's also a negated version of it:

    unless ( condition ) {
        ...
    }

#    This is provided as a more readable version of if (!condition).

#    Note that the braces are required in Perl, even if you've only got one 
# line in the block. However, there is a clever way of making your one-line 
# conditional blocks more English like:

    # the traditional way
    if ($zippy) {
        print "Yow!";
    }

    # the Perlish post-condition way
    print "Yow!" if $zippy;
    print "We have no bananas" unless $bananas;

#    There's also a negated version, for the same reason we have unless:

    until ( condition ) {
        ...
    }

#    You can also use while in a post-condition:

    print 1100 while 1;          # loops forever
