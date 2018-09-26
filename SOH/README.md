)c3po-v tracking of SOH crontab scripts: [spreadsheet here](https://docs.google.com/spreadsheets/d/1fbhwCiXByD2DfeTT4kG_gpNsrMLACyxw07sJytjHMc0/edit?usp=sharing

Note: Taken from Sep 17 2018 crontab

|crontab line | Active? | directories_referenced | Note | Input  | Output | scripts_run_1
|------------ | ------- | ---------------------- | ---- | -----  | ------ | -------------
|1,31 * * * * /data/mta4/www/SOH/run-acorn.pl > $HOME/Logs/RT/run-acorn-soh.cron 2>&1 | TRUE | $work_dir = "/data/mta4/www/SOH";/home/ascds/DS.release/ | chandra state of health |  | *.tl | 
|2,32 * * * * /data/mta4/www/SOH/PCAD/run-acorn.pl > $HOME/Logs/RT/run-acorn-pcad.cron 2>&1 | TRUE | $work_dir = "/data/mta4/www/SOH/PCAD", /home/ascds/DS.release/ | more chandra state of health |  | *.tl | 
|* * * * * /data/mta4/www/SOH/rt_checker.pl >> $HOME/Logs/RT/rt1_checker.cron 2>&1 | TRUE | $work_dir = "/data/mta4/www/Snapshot".$snap_dir = "/data/mta4/www/Snapshot",$soh_dir ="/data/mta4/www/SOH",$HOME = "/home/mta",/data/mta4/www/SOH/LIB' | state of health process |  |  | $soh_dir/tlogr-soh.pl,$soh_dir/Config/tlogr-config.pl,$soh_dir/Prop/tlogr-prop.pl,$soh_dir/Load/tlogr-load.pl
|* * * * * /data/mta4/www/SOH/rt_checker_ccdm.pl >>$HOME/Logs/RT/rt1_checker_ccdm.cron 2>&1 | TRUE | $work_dir = "/data/mta4/www/Snapshot".$snap_dir = "/data/mta4/www/Snapshot",$soh_dir ="/data/mta4/www/SOH",$HOME = "/home/mta" | state of health process |  |  | $soh_dir/Therm/tlogr-therm.pl,$soh_dir/CCDM/tlogr-ccdm.pl
|* * * * * /data/mta4/www/SOH/rt_checker_pcad.pl >>$HOME/Logs/RT/rt1_checker_pcad.cron 2>&1 | TRUE | $work_dir = "/data/mta4/www/Snapshot".$snap_dir = "/data/mta4/www/Snapshot",$soh_dir ="/data/mta4/www/SOH",$HOME = "/home/mta" | state of health process |  |  | $soh_dir/PCAD/tlogr-pcad.pl,$soh_dir/Mech/tlogr-mech.pl,$soh_dir/EPS/tlogr-eps.pl
|* * * * * /data/mta4/www/SOH/rt_checker_safe.pl >>$HOME/Logs/RT/rt1_checker_safe.cron 2>&1 | TRUE | $work_dir = "/data/mta4/www/Snapshot".$snap_dir = "/data/mta4/www/Snapshot",$soh_dir ="/data/mta4/www/SOH",$HOME = "/home/mta" | state of health process |  |  | $soh_dir/Smode/tlogr-smode.pl
