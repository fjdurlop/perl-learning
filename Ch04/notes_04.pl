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

#my $scalar = \@array
#my $scalar = \%hash

# numeric variables
my $n = 12;

say "n is $n";

$n = $n . ' foo';

# this would be an error, because it's already a string
#$n = $n + 100; 

say "n is [$n]";

#strings

my $s = qq(Hola "this too");
say $s;

# Iterate over a list

say foreach (1,2,3);

say foreach ("one","two","three");

say foreach qw(one two three); # quote word list

my $i=1;
say foreach qw(one two three)[$i];

# array holds a series of scalar values
my @array = (1,2,3);
say foreach @array;

say "Getting one scalar value from the array";
# Getting one scalar value from the array
say $array[2];

# Use for queue and stacks
#push array, extending array
push @array, qw(4 5 6);
say foreach @array;
#pop, from the end
my $x = pop @array;
say "Pop\n".$x;
say @array;

# shift, from the beggining
my $y = shift @array;
say "Shift\n".$y;
say @array;

#unshift, add values at the beggining of the array
unshift @array, qw(11 11 11);
say foreach @array;

my $len = @array;
say $len;

# Array slicing, slice gives another array
say "Array slicing________________";
@array = qw( one two three four five six seven eight nine ten );
say @array;
say foreach @array;
say foreach @array[1,2,3];
say "_____________________";
say foreach @array[0..5];

# Hash, asociate arrays
#keys are unique
# unordered
my %hash = ( one => 'uno', two => 'dos', three => 'tres', four => 'quatro', five => 'cinco' );

$hash{six} = 'seis';
$hash{one} = 'foo';
delete $hash{three};
while( my ($k, $v) = each %hash ) {
    say "$k -> $v";
}

say "_------------";
say foreach %hash;

say "sorting a hash"
foreach my $a (sort(keys    %hash)){
    my $b = $hash{$k};
    say " $a -> $b ";

}

# constants
use constant PI => 3.141592653589793238462643383279;
use constant TRUE => 1;
use constant FALSE => '';

say PI;

if (TRUE) {
    say 'true';
} else {
    say 'false';
}







