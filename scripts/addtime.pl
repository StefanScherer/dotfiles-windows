#!/bin/perl -w
# filename: ./addtime
# derived from http://www.podciborski.co.uk/programming/perl/add-a-timestamp-to-every-stdout-line/
#
# Usage:
# ./anyscript_you_choose | ./addtime
use strict;
use Time::HiRes qw( gettimeofday tv_interval);

my $t0 = [gettimeofday];
my($old)=select(STDOUT);
$|=1;
select(STDIN);
$|=1;
select ($old);
 
while(<>)
{
  my $elapsed = tv_interval ( $t0 );
  printf "%07.3f %s",$elapsed,$_;
}
