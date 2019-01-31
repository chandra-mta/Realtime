#!/usr/bin/perl 

#############################################################################
#                                                                           #
#       copy_cxo_data.perl: copy and modify cxo.gsme_in_Re data             #
#                                                                           #
#           author: t. isobe (tisobe@cfa.harvard.edu)                       #
#           Last update: May 10, 2018                                       #
#                                                                           #
#############################################################################

my $dir = '/home/lduque/git/Realtime/space_weather/dir_space_weather';
open(my $IN, "<",$dir) or die "Cannot open $dir\n";

my %dir_vars;

while (<$IN>){
        chomp;
        my($value, $key) = split(/\s*:\s*/, $_);
        $dir_vars{$key} = $value;
}


system("rm -rf ./cxo.gsme_in_Re");
#open(FH, '/proj/rac/ops/ephem/TLE/cxo.gsme_in_Re');
open(FH, "$dir_vars{RAC_OPSdir}/ephem/TLE/cxo.gsme_in_Re");
open(OUT, '>./cxo.gsme_in_Re');
#
#--- remove the lines which do not start with digit
#
while(<FH>){
    chomp $_;
    if($_ =~ /nan/){
        next;
    }

    @atemp = split(//, $_);
    if($atemp[0] =~ /\d/){
        print OUT "$_\n";
    }
}
close(OUT);
close(FH);
system("chmod 755 ./cxo.gsme_in_Re");

#
#---------------------------------------------
#

system("rm -rf ./xmm.gsme_in_Re");
open(FH, "$dir_vars{RAC_OPSdir}/ephem/TLE/xmm.gsme_in_Re");
open(OUT, '>./xmm.gsme_in_Re');
#
#--- remove the lines which do not start with digit
#
while(<FH>){
    chomp $_;
    if($_ =~ /nan/){
        next;
    }

    @atemp = split(//, $_);
    if($atemp[0] =~ /\d/){
        print OUT "$_\n";
    }
}
close(OUT);
close(FH);
system("chmod 755 ./xmm.gsme_in_Re");
