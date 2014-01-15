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
#!/bin/perl -w
#line 15
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

__END__
:endofperl
