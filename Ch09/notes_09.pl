#!/usr/bin/perl
# hello.pl by Bill Weinman <http://bw.org/contact/>


# doc: https://perldoc.perl.org/perlre

use 5.18.0;
use warnings;

my $var = 12;
printf("Hello, %4.2f \n",212345.126);

printf "%04d\n", 20;

# Regex

#
#
#
#
my $s = "This is a line of text";

#binding operator:
#$s =~ /l*ne/ returns true or false if match

if ( $s =~ /l*ne/ ) {
    say 'True';
} else {
    say 'False';
}

my $re = qr/line/;

say $s =~ $re ? 'True': 'False';

say "-------------------------------------";
#ignoring case
$s =~ /l*ne/;

# just first i
$s =~ /i/;

# list all the i's:
$s =~ /i/g; 
 
#
$s = "This is a line of text";

my @array = $s =~ /i(.)/g;

say foreach @array;
#same
say foreach $s =~ /i(.)/g;

# /a{3}/ #three aaa in a row
# /a{3,5}/ #three aaa until 5 in a row


say "-------------------------------------";

$s = "This is a line of text";

if ( $s =~ /(text)/ ) {
    say "Match is: $1";
} else {
    say 'False';
}

# classes of characters

# /(\s)/ #whitespaces
# /(\S)/ #NO whitespaces
# /(\d)/ #digits
# /(\D)/ #no digits
# /(\w)/ #words , letters and digits
# /(\W)/ #NO words , letters and digits
# /([123]+)/ # own class by putting into []
# /([1-9]+)/ # own class by putting into []

# search and replace
say "-------------------------------------";
$s = "This is a line of text";

$s =~ s/line/string/; # replace "line" with "string"

say $s;

$s =~ s/[se]/x/g; # replace "s or e" with "x"
say $s;

