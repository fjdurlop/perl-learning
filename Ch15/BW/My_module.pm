package BW::My_module;
use 5.18.0;
use warnings;

my $LEVEL = 1; # any subroutine can access it

# Functions
sub open{
   my $logfile = shift;
   say "Opening $logfile";

}

sub close{
   my $logfile = shift;
   say "Closing $logfile";

}

# Not required for recent versions
1;