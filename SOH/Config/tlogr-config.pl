#!/usr/bin/perl
##!/proj/axaf/bin/perl
use strict;

#use lib '/proj/ascwww/AXAF/extra/science/cgi-gen/mta/SOH/LIB';
#use lib '/data/mta4/www/SOH/LIB';
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

my $work_dir = "$dir_vars{'work_dir'}/Config";
my $tl_dir = $dir_vars{'tl_dir'};

#my $work_dir = "/data/mta4/www/SOH/Config";
#my $tl_dir = "/data/mta4/www/SOH";
#my $web_dir = "/data/mta4/www/SOH/Config";
my @ftype = qw(ACA01 ACA23 ACA45 ACA67 ATT figMISC sohTEL);

use soh;
my %xh1 = get_data($tl_dir, @ftype);
my %xh2 = get_data($tl_dir, qw(FORM));
my %xh = (%xh1, %xh2);

%xh = get_times(%xh);

#use comp_config;
#%xh = do_comps(%xh);

%xh = set_status(%xh);

use format_config_pop;
soh_format("$work_dir/soh-config.html", %xh);
#`cp $work_dir/soh-config.html $web_dir`;
# end
