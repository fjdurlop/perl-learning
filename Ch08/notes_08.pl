# notes
# operators

use 5.18.0;
use warnings;

my $str_x = "abc";

my $str_y ="xyz";

say $str_x cmp $str_y;

my $x = 47;
my $y = 4;

say $x/$y;

say int($x/$y);

# sanitize values when using floats

# file test operators

my $filename = 'testfile.txt';

if(-e $filename) { # -r readable -w writeable -d directory
    say 'file test returned true';    
} elsif($!) {
    say $!; 
} else {
    say 'file test returned false';
}

#my $lower = "a" 
#my $upper = "z"
my $lower = "01" ;
my $upper = "31";
foreach my $i ($lower .. $upper) {
    print "$i ";
}

my @array = ($lower .. $upper);
say foreach @array;

print "\n";

