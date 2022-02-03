# statements and expression
# statement, tells the computer what actions to take
#  express values, returns a value
# 

=cut

sub main
{
    my $filename = shift || "linesfile.txt"; #expression
    my $count = countlines( $filename );
    say "There are $count lines in $filename"; # statement, ; is optional here, but is considered best practice

}

# assigment
my $x = 12;
say $x;

# assigning scalar values to an array, it gives the number of values

my @array = (1,2,3);
my $count = @array #number of values of the array

my ($x,$y,$z) = (1,2,3);

# whitespaces are not neccesary in most cases
# comments: there's no multi-line comments


# Blocks and scope

# my  -  keyword gives local scope to the variable
# all variables need at some point a scope, in other words: use 'my'

my $x = 12;

func();

sub func{
    my $x = 13; #changing value and scope
}


###