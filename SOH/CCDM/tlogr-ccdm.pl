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

# define the working directory for the snapshots

my $work_dir = "$dir_vars{'work_dir'}/CCDM"; #"/data/mta4/www/SOH/CCDM";
my $tl_dir = "$dir_vars{'tl_dir'}/PCAD"; #"/data/mta4/www/SOH/PCAD";
#my $web_dir = "/data/mta4/www/mta/SOH/CCDM";
my @ftype = qw(ccdmCTU ccdmEIA ccdmEP_RCTU ccdmIU ccdmOBC ccdmPC_RCTU ccdmPSU ccdmRF ccdmSI_RCTU ccdmSSR ccdmTS_RCTU);

use soh;
my %xh1 = get_data($tl_dir, @ftype);
my %xh2 = get_data($dir_vars{'tl_dir'}, qw(FORM));
my %xh = (%xh1, %xh2);

%xh = get_times(%xh);

#use comp_ccdm;
#%xh = do_comps(%xh);

%xh = set_status(%xh);

use format_ccdm_pop;
soh_format("$work_dir/soh-ccdm.html", %xh);
#`cp $work_dir/soh-ccdm.html $web_dir`;
# end
