#!/usr/bin/perl
# Requirements review

use 5.18.0;
use warnings;

sub line{
    say "---------------------------------------------------------";
}

sub title{
    my $title = shift;
    say "\n---------------------  $title  ----------------------------";

}

#- How to run a Perl program on your system

#- The three basic Perl variable types: scalars, arrays, and hashes

# Scalars
title("Scalars");
my $age = 25;             # An integer assignment
my $name = "John Paul";   # A string 
my $salary = 1445.50;     # A floating point

print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";

#arrays
title("Arrays");

my @ages = (25, 30, 40);             
my @names = ("John Paul", "Lisa", "Kumar");

print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";

# Hashes
title("Hashes");

my %data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

line();

#- Control structures such as while, if, for, and foreach

# If
title("If");

#Exp1 ? Exp2 : Exp3;
$name = "Ali";
$age = 10;

my $status = ($age > 18 )? "A senior citizen" : "Not a senior citizen";
print "$name is  - $status\n";

##

my $a = 100;
# check the boolean condition using if statement
if( $a  ==  20 ) {
   # if condition is true then print the following
   printf "a has a value which is 20\n";
} elsif( $a ==  30 ) {
   # if condition is true then print the following
   printf "a has a value which is 30\n";
} else {
   # if none of the above conditions is true
   printf "a has a value which is $a\n";
}

# While
title("While");
$a = 10;

# while loop execution
while( $a < 20 ) {
   printf "Value of a: $a\n";
   $a = $a + 1;
}
# For
title("For");
for(my $a = 0; $a < 5; $a = $a + 1 ) {
   print "value of a: $a\n";
}

# Foreach
title("Foreach");
say foreach @names;

say "lllll";
say $a;
my @list = (2, 20, 30, 40, 50);

# foreach loop execution
foreach $b (@list) {
   print "value of b: $b\n";
}
say "lllll";
say $a;

line();

#- Subroutines
title("Subroutines or functions");

# Function definition
sub Hello {
   print "Hello, World!\n";
}

# Function call
Hello();

# Function definition
sub Average {
   # get total number of arguments passed.
   my $n = scalar(@_);
   my $sum = 0;

   foreach my $item (@_) {
      $sum += $item;
   }
   my $average = $sum / $n;

   print "Average for the given numbers : $average\n";
}

# Function call
Average(10, 20, 30);

# Function definition
sub PrintList {
   my @list = @_;
   print "Given list is @list\n";
}
$a = 10;
my @b = (1, 2, 3, 4);

# Function call with list parameter
PrintList($a, @b);


# Function definition
sub PrintHash {
   my (%hash) = @_;

   foreach my $key ( keys %hash ) {
      my $value = $hash{$key};
      print "$key : $value\n";
   }
}
my %hash = ('name' => 'Tom', 'age' => 19);

# Function call with hash parameter
PrintHash(%hash);

line();

# For more: See use of local and state variables

use feature 'state';

sub PrintCount {
   state $count = 0; # initial value

   print "Value of counter is $count\n";
   $count++;
}

for (1..5) {
   PrintCount();
}

#- Perl operators such as grep, map, sort, and print

#grep()
title("grep()");
# Initialising an array of some elements
my @Array = ('Geeks', 'for', 'Geek');
  
# Calling the grep() function
my @A = grep(/^G/, @Array);
  
# Printing the required elements of the array
say @A;

title("map");
# map BLOCK LIST
my @numbers = (1,245,121,124);
my @chars = map(chr, @numbers);
say @chars;

my @squares = map { $_ * $_ } @numbers;
say join(' - ', @squares);

line();

#- File manipulation such as open, file reading, and -X (file tests)
line();
