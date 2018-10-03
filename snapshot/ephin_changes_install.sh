#! /bin/sh
#Run as user mta


git_dir=/home/lduque/git/Realtime

cd $git_dir
git checkout ephin_changes

# Snapshot
snapdir_primary=/data/mta4/www/

diff $git_dir/snapshot/tlogr_linux.pl $snapdir_primary/Snapshot/tlogr_linux.pl
cp -f $git_dir/snapshot/tlogr_linux.pl $snapdir_primary/Snapshot/

diff $git_dir/snapshot/check_state.pm $snapdir_primary/Snapshot/check_state.pm
cp -f $git_dir/snapshot/check_state.pm $snapdir_primary/Snapshot/

diff $git_dir/snapshot/snap_format.pm $snapdir_primary/Snapshot/snap_format.pm
cp -f $git_dir/snapshot/snap_format.pm $snapdir_primary/Snapshot/

diff $git_dir/snapshot/snaps2.par $snapdir_primary/Snapshot/snaps2.par
cp -f $git_dir/snapshot/snaps2.par $snapdir_primary/Snapshot/

diff $git_dir/snapshot/snaps2_alerts.par $snapdir_primary/Snapshot/snaps2_alerts.par
cp -f $git_dir/snapshot/snaps2_alerts.par $snapdir_primary/Snapshot/

diff $git_dir/snapshot/chandra-msids.list $snapdir_primary/Snapshot/chandra-msids.list
cp -f $git_dir/snapshot/chandra-msids.list $snapdir_primary/Snapshot/




