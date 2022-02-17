#!/usr/bin/perl
# hello.pl 

use 5.18.0;
use warnings;

# Modules

# Perl doesn't have an object model perse
# Import module:
#use BW::Better;
use BW::My_module;


BW::My_module->open('file.txt');
BW::My_module->close('file.txt');




