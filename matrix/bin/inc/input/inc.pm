#!/usr/bin/perl

# We've already seen how to print to standard output using print(). However, 
# print() can also take an optional first argument specifying which filehandle 
# to print to:
my $inc        = 1;
my $home       = "matrix";
my $message = 1;

print STDERR "This is your final warning.\n";
print $inc $home;
log $message;

# When you're done with your filehandles, you should close() them (though to be honest, 
# Perl will clean up after you if you forget):

close $inc or "$inc: $!";
