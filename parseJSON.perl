#!/usr/bin/perl

# use module
use strict;
use warnings;
use lib qw(..);
use JSON qw( );

my $filename = 'repoinfo';
my $json_text = do {
   open(my $json_fh, "<:encoding(UTF-8)", $filename)
      or die("Can't open \$filename\": $!\n");
   local $/;
   <$json_fh>
};

my $json = JSON->new;
my $data = $json->decode($json_text);

for ( @{$data} ) {
   my $cmd = $_->{scm} . ' clone ' . "ssh://git\@bitbucket.org/" . $_->{owner} . "/" . $_->{name} . " " . "repos/" . $_->{name} . "\n";
   system($cmd);
}
