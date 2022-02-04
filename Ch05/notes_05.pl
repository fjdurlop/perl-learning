#!/usr/bin/perl
# conditional.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

my $x = 1;
my $y = 1;

if ( $x == 1 ) {
    say 'true';
}

say "x is $x; y is $y";

# == -> eq ; $x == $y -> $x eq $y
# != -> ne

# > -> gt
# >= -> ge

# and &&
# or ||
my $var = "ju";
if($var ge "ju"){
    say "yeah";
}

my $name = "Ali";
my $age = 10;

my $status = ($age > 60 )? "A senior citizen" : "Not a senior citizen";

print "$name is  - $status\n";

# WHile
# while(expr){block}

# until(expr){block}
my $i=0;
for($i=0 ; $i<=10 ;$i++ ) {
   printf " $i \n";
}
say "--------------------";
# foreach, simpler looping over lists
foreach $i (0..10){
    print("jeje $i");
}
my @array = qw( one two three four five );

foreach my $s (@array){
    print($s);
}

foreach  (@array){
    say;
}

say foreach @array;
say "--------------------";



while (@array) {
    say shift @array;
}
my @array2 = qw( one two three four five );

say scalar @array2;