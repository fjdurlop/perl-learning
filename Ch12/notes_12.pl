
#!/usr/bin/perl
# filehandle.pl 

use 5.18.0;
use warnings;
use IO::File; # OO interface for files

sub line {
    say '_________________________________________________________';
}

my $filename = 'lines.txt';

# open(file handler , file mode , filename)

open(my $fh, '<', $filename) or die "Cannot open file: $!";
print while <$fh>; #treats it as a list
close $fh;

#with global variable
open(FH, '<', $filename) or die "Cannot open file: $!";
say while <FH>; #treats it as a list
close FH;


my $outfile = 'newfile.txt';

# read mode
open(my $fh1, '<', $filename) or die "Cannot open file: $!";
# write mode
open(my $fh2, '>', $outfile) or die "Cannot open file: $!";

# Copying content
while (my $line = <$fh1>) {
    print $fh2 $line;
}

close $fh1;
close $fh2;
say 'Done';

line();

# Most common way to work with files in perl
# Using OO interface for files

my $name = 'lines.txt';

my $file = IO::File->new("< $name") or die "Cannot open file: $!";
print while <$file>;
$file->close(); # It is unnecessary 

# Binary files