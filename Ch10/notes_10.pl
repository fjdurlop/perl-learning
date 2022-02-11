#!/usr/bin/perl
# hello.pl by Bill Weinman <http://bw.org/contact/>

use 5.18.0;
use warnings;

# Functions are subroutines
sub func {
    say 'Hello This is a wonderful function.';
}

sub line {
    say '_________________________________________________________';
}


func();
line();

# Arguments
sub hola {
    my $name = shift;
    say "Hello $name !!";
}
hola('Paco');
line();

# Use shift as many times as I want
sub hola_2 {
    my $a = shift;
    my $b = shift;
    my $c = shift;
    my $d = shift;
    
    say "Hello $a, $b, $c, $d !!";
}
hola_2('Paco','Cesar','Gaby','Diana');
line();

#Same than above
sub hola_3 {
    my($a,$b,$c,$d) = @_;
    
    say "Hello $a, $b, $c, $d !!";
}
hola_3('Paco','Cesar','Gaby','Diana');
line();

# 
sub func_2{
    return (1,2,3,4,5);
}

say foreach func_2;
line();

# Static variables: every time the function is called, the value persists 

sub static{
    state $n =10;
    say ++$n;
}

static();
static();
static();

