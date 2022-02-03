#!/usr/bin/perl
# slice.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

# For variables Perl uses the duck type,
# Context determines type

# Storage types
# - Scalar: Holds a single value                $scalar
# - Array: Holds a series of values             @array
# - Hash: Holds a set of key/value pairs       %hash

# Perl references
# a scalar that refers to another object
# for complex data structures

my $scalar = \@array
my $scalar = \%hash



