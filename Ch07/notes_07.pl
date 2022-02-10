#!/usr/bin/perl
# defvar.pl by Bill Weinman <http://bw.org/contact/>

#________________________________
# SPECIAL VARIABLES
#________________________________

use 5.18.0;
use warnings;

my @array = qw( one two three four five );
say foreach @array;

# It has the default variable $_
foreach (@array){
    say;
}

foreach $_ (@array){
    say $_;
}

say "--------------------------------------------------------";

# Default array
func1('one', 'two', 'three');

sub func1 {
    say 'this is func1';
    say foreach @_;
    my ($a,$b,$c) = @_;
    say "a is $a"
}

say "--------------------------------------------------------";

# Autoflush variable
$| = 1; # turns on autoflush 

#main();
sub main {
    print "What is your favorite number? ";
    my $num = <STDIN>;
    my $mine = better_number($num);
    print "\nReally? My favorite number is $mine, which is a much better number.\n";
}

sub better_number {
    my $num = shift || 6;
    $num = 6 unless $num =~ /^[0-9]+$/;
    return $num + int(rand(10)) + 1;
}

say "--------------------------------------------------------";

my $filename = 'notfound.txt';

if (-e $filename ) { # default exists?
    say 'found!';
} else {
    my $errorstring = $!;
    my $errornumber = $! + 0; #force into numeric context
    say "error $errornumber: $errorstring";  # special variable that contains the error
}

# Special variables

