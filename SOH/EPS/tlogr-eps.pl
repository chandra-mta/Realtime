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

my $work_dir = "$dir_vars{'work_dir'}/EPS"; #"/data/mta4/www/SOH/EPS";
my $tl_dir = $dir_vars{'tl_dir'}; #"/data/mta4/www/SOH";
#my $web_dir = "/data/mta4/www/SOH/EPS";
my @ftype = qw(sohEPS epsMISC);

use soh;
my %xh1 = get_data($tl_dir, @ftype);
my %xh2 = get_data($tl_dir, qw(FORM));
my %xh = (%xh1, %xh2);

%xh = get_times(%xh);

use comp_eps;
%xh = do_comps(%xh);

%xh = set_status(%xh);

use format_eps_pop;
soh_format("$work_dir/soh-eps.html", %xh);
#`cp $work_dir/soh-eps.html $web_dir`;
# end
