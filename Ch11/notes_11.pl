#!/usr/bin/perl
# hello.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

sub line {
    say '_________________________________________________________';
}

# Reference: scalar referencing to something

#ref($r) - return the type of the reference value

my @array = qw( one two three four five );
my $ref = \@array; #obtain reference
say foreach @{$ref}; #dereference 
# Below: Better not!!!
#say foreach @$ref; #dereference 

line();

#reference to an anonymous array
$ref = [qw( one two three four five )]; #obtain reference
say foreach @{$ref}; #dereference 
# can't not take reference from a list
line();

# array references
$ref = [1,2,3];
${$ref}[0] = 'one';
say foreach @{$ref};

line();
$ref = [1,2,3];
$ref->[0] = 'one';
say foreach @{$ref};

# Hash references

line();

my %hash = (
    one => 'uno',
    two => 'dos',
    three => 'tres',
    four => 'quatro',
    five => 'cinco'
);

$ref = \%hash;
foreach my $k ( sort keys %{$ref}) {
    say "$k : ${$ref}{$k}";
}

line();
# anonymous hash:
my $ref2 = { # curly because it is an anonymous hash
    one => 'uno',
    two => 'dos',
    three => 'tres',
    four => 'quatro',
    five => 'cinco'
};

foreach my $k ( sort keys %{$ref2}) {
    say "$k : ${$ref2}{$k}";
}

line();
$ref2->{one} = 1;

foreach my $k ( sort keys %{$ref2}) {
    say "$k : ${$ref2}{$k}";
}

# Function references;  & function symbol, as $ for scalar
line();
my $ref_1 = \&funcion;

&{$ref_1}();
# defunction operator also as:
$ref_1->();

sub funcion{
    say "Function!";
}

line();
#anonymous function
my $ref_2 = sub{ say "I am an anonymous function"};
# defunction operator also as:
$ref_2->();


