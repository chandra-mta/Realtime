#!/proj/cm/Release/install.linux64.DS10/ots/bin/perl
##!/opt/local/bin/perl -w

# check that my acorn process is running
# if not, restart and log the process id

# Robert Cameron
# April 2000

$uid = "mta";
#$work_dir = "/proj/ascwww/AXAF/extra/science/cgi-gen/mta/SOH/PCAD";
$work_dir = "/data/mta4/www/SOH/PCAD";
$pid_file = "$work_dir/racorn.pid";
@acorn = qw(/home/ascds/DS.release/bin/acorn);
#@acorn = qw(/export/acis-flight/primary/acorn-1.33/acorn);
$acorn_exe = (-e $acorn[0])? $acorn[0] : $acorn[1];
$UDP_port = "11121"; # multimon port (from eno)
$msids = "$work_dir/pcad-msids.list";
$filesize = 500;

# set environment variables for acorn

@mta_data = qw(/home/ascds/DS.release/config/mta/data /data/mta2/pallen/acorn-1.3/groups /home/swolk/acorn/groups);
$ENV{ASCDS_CONFIG_MTA_DATA} = (-e $mta_data[0])? $mta_data[0] : $mta_data[1]; 
# /home/mta/IPCL contains revised tpp.txt for IRU-2 analog rates 6/10/03 bds
#@ipcl = qw(/home/ascds/DS.release/config/tp_template/P011/ /home/ascds/swolk/IPCL/P008 /home/swolk/acorn/ODB);
@ipcl = qw(/data/mta4/www/Snapshot/P011 /data/mta4/www/Snapshot/P009);
$ENV{IPCL_DIR} = (-e $ipcl[0])? $ipcl[0] : $ipcl[1];
$ENV{LD_LIBRARY_PATH} = '/home/ascds/DS.release/lib:/home/ascds/DS.release/ots/lib:/soft/SYBASE_OSRV15.5/OCS-15_0/lib:/home/ascds/DS.release/otslib:/opt/X11R6/lib:/usr/lib64/alliance/lib:$LD_LIBRARY_PATH';
chdir $work_dir or die "Cannot cd to $work_dir\n";

# get the PID for the last known acorn process

open (PIDF, "$pid_file") or die "Cannot read PID file $pid_file\n";
while (<PIDF>) { @pinfo = split };

# get the PID for the currently running acorn process (if any)

@p = `/bin/ps -auxwww | grep $uid`;
#@a = grep /$acorn_exe.+$work_dir/, @p;
@a = grep /$acorn_exe.+$msids/, @p;
if (!@a) {
    system("$acorn_exe -u $UDP_port -C $msids -e $filesize -nv &");
    print "Acorn process not found: restarting\n";
    sleep 3;
}

@p = `/bin/ps -auxwww | grep $uid`;
@a = grep /$acorn_exe.+$work_dir/, @p;
die "Cannot find or restart acorn process\n" if (!@a);

foreach (@a) {
    @f = split;
    $pid = $f[1];
}

# compare the actual and expected PIDs. Log any change.

if ($pinfo[0] ne $pid) {
    $date = `date`;
    print "Acorn PID mismatch. Putting pid $pid in $pid_file at $date";
    open (PIDF, ">$pid_file") or die "Cannot write PID file $pid_file\n";
    print PIDF "$pid started at $date";
}
