#!/usr/bin/perl
# hello.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

# separator special variable, global
$, = ', '; # last item don't use it

my @a = (1,2,3,4,5);
say @a;

sub line{
    say "____________________________________________";
}

line();

my $string = "This string has a bunch of useful characters in it.";

say $string;

say length $string;

#substrings

say substr $string, 0, 4;
line();
#replacing substrings
substr ($string, 0, 4, 'foo');
say $string;

line();
$string = "This string has a bunch of useful characters in it.";

say index $string, 'Th';
say index $string, 'in';
say index $string, 'in',10;# starting later in the string
say index $string, 'abs'; #not found


say rindex $string, 'in';
say rindex $string, 'in',10;# starting from right

line();

#reverse for list, first it doesn't do anything, it takes that as a list
say reverse($string);
say reverse($string,"-Paco-");

say scalar reverse($string);

line();
# lower and upper case
say lc $string;
say uc $string;

line();
my $a = 47;
my $b = 150;

my $x = $a + $b;

say "result is: $x";
# built-in functions don't need parenthesis 

say int rand 100;
say int rand 100;
say int rand 100;

line();
my @a = qw( one two three four five );
say foreach @a;



