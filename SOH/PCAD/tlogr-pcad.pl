#!/usr/bin/perl
##!/proj/axaf/bin/perl
use strict;

#use lib '/proj/ascwww/AXAF/extra/science/cgi-gen/mta/SOH/LIB';

use lib '/home/lduque/git/Realtime/SOH/LIB';
# produce a Chandra status snapshot

# define the working directory for the snapshots
my $dir = '/home/lduque/git/Realtime/SOH/dir_soh';

open(my $IN, "<",$dir) or die "Cannot open $dir\n";

my %dir_vars;

while (<$IN>){
        chomp;
        my($value, $key) = split(/\s*:\s*/, $_);
        $dir_vars{$key} = $value;
}

my $work_dir = "$dir_vars{'work_dir'}/PCAD"; #"/data/mta4/www/SOH/PCAD";
my $tl_dir = "$dir_vars{'tl_dir'}/PCAD"; #"/data/mta4/www/SOH/PCAD";
#my $web_dir = "/data/mta4/www/SOH/PCAD";
my @ftype = qw(pcadACA pcadADE pcadATT pcadCPE pcadFLCA pcadFSSA pcadIOE pcadIRU pcadMOM pcadRWA pcadSOLAR pcadSPE pcadSW pcadVDE);

use soh;
my %xh1 = get_data($tl_dir, @ftype);
my %xh2 = get_data($dir_vars{'tl_dir'}, qw(FORM));
my %xh = (%xh1, %xh2);

%xh = get_times(%xh);

#use comp_pcad;
#%xh = do_comps(%xh);

%xh = set_status(%xh);

use format_pcad_pop;
soh_format("$work_dir/soh-pcad.html", %xh);
#`cp $work_dir/soh-pcad.html $web_dir`;
# end
