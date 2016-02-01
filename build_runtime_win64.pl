use Cwd;
use Cwd 'abs_path';
use Getopt::Long;
use File::Basename;
use File::Path;

my $monoroot = File::Spec->rel2abs(dirname(__FILE__) . "/../..");
my $monoroot = abs_path($monoroot);
my $buildScriptsRoot = "$monoroot/external/buildscripts";

# TODO by Mike : Pass along predefined mono and cygwin install locations
system("perl", "$buildScriptsRoot/build_win_wrapper.pl", "--build=1", "--clean=1", "--test=1", "--artifact=1", "--classlibtests=0") eq 0 or die ("Failed builidng mono\n");