@rem = '--*-Perl-*--
@echo off
if "%OS%" == "Windows_NT" goto WinNT
perl -x -S "%~f0" %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
:WinNT
perl -x -S "%~f0" %*
if NOT "%COMSPEC%" == "%SystemRoot%\system32\cmd.exe" goto endofperl
if %errorlevel% == 9009 echo You do not have Perl in your PATH.
if errorlevel 1 goto script_failed_so_exit_with_non_zero_val 2>nul
goto endofperl
@rem ';
#!/usr/bin/perl
#line 15
# given a logfile with date and time at the beginning of each log file,
# this script shows the logfile with relative time
# usage: timeref logfile
use strict;

use Date::Parse;

open LOG, $ARGV[0] or die "Unable to open file $ARGV[0]:$!\n";
while (my $line = <LOG>)
{
  $line =~ s/^([0-9][0-9.:T \-]+[0-9])/&timeref($1)/geo;
  print $line;
}
close LOG;


my $starttime;
sub timeref
{
  my ($timestr) = @_;
  my $time = str2time($timestr);
  $starttime = $time unless defined $starttime;
  my $timeref = $time - $starttime;

  return sprintf "%8.3f", $timeref;
}

__END__
:endofperl
