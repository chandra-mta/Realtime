sub soh_format {
  $outfile = shift @_;
  %h = @_;
  print_head("$outfile","Thermal", %h);

open (SF, ">>$outfile");

printf SF "<TABLE BORDER=0>\n";
printf SF "<TR><TD ALIGN=LEFT COLSPAN=11><FONT SIZE=4>ISIM</FONT></TR>\n";
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3TTACS1T</FONT></TD>\n", ${$h{"3TTACS1T"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3TTACS1T"}}[3], ${$h{"3TTACS1T"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3FAFLAAT</FONT></TD>\n", ${$h{"3FAFLAAT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3FAFLAAT"}}[3], ${$h{"3FAFLAAT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3FASEAAT</FONT></TD>\n", ${$h{"3FASEAAT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3FASEAAT"}}[3], ${$h{"3FASEAAT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3FAMTRAT</FONT></TD>\n", ${$h{"3FAMTRAT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3FAMTRAT"}}[3], ${$h{"3FAMTRAT"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3TTACS2T</FONT></TD>\n", ${$h{"3TTACS2T"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3TTACS2T"}}[3], ${$h{"3TTACS2T"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3FAFLBAT</FONT></TD>\n", ${$h{"3FAFLBAT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3FAFLBAT"}}[3], ${$h{"3FAFLBAT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3FAFLCAT</FONT></TD>\n", ${$h{"3FAFLCAT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3FAFLCAT"}}[3], ${$h{"3FAFLCAT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3TRMTRAT</FONT></TD>\n", ${$h{"3TRMTRAT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3TRMTRAT"}}[3], ${$h{"3TRMTRAT"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3TTACS3T</FONT></TD>\n", ${$h{"3TTACS3T"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3TTACS3T"}}[3], ${$h{"3TTACS3T"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3FAPSAT</FONT></TD>\n", ${$h{"3FAPSAT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3FAPSAT"}}[3], ${$h{"3FAPSAT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3FLCABPT</FONT></TD>\n", ${$h{"3FLCABPT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3FLCABPT"}}[3], ${$h{"3FLCABPT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3RCTUBPT</FONT></TD>\n", ${$h{"3RCTUBPT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3RCTUBPT"}}[3], ${$h{"3RCTUBPT"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>3BTU_BPT</FONT></TD>\n", ${$h{"3BTU_BPT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"3BTU_BPT"}}[3], ${$h{"3BTU_BPT"}}[1];
printf SF "</TABLE>\n";

printf SF "<BR>\n";
printf SF "<TABLE BORDER=0>\n";
printf SF "<TR><TD ALIGN=LEFT COLSPAN=11><FONT SIZE=4>ACIS</FONT></TR>\n";
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>1CRAT</FONT></TD>\n", ${$h{"1CRAT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"1CRAT"}}[3], ${$h{"1CRAT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>1WRAT</FONT></TD>\n", ${$h{"1WRAT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"1WRAT"}}[3], ${$h{"1WRAT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>1DPAMZT</FONT></TD>\n", ${$h{"1DPAMZT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"1DPAMZT"}}[3], ${$h{"1DPAMZT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>1PIN1AT</FONT></TD>\n", ${$h{"1PIN1AT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"1PIN1AT"}}[3], ${$h{"1PIN1AT"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>1CBBT</FONT></TD>\n", ${$h{"1CBBT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"1CBBT"}}[3], ${$h{"1CBBT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>1WRBT</FONT></TD>\n", ${$h{"1WRBT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"1WRBT"}}[3], ${$h{"1WRBT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>1DEAMZT</FONT></TD>\n", ${$h{"1DEAMZT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"1DEAMZT"}}[3], ${$h{"1DEAMZT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>1CBAT</FONT></TD>\n", ${$h{"1CBAT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"1CBAT"}}[3], ${$h{"1CBAT"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>1CRBT</FONT></TD>\n", ${$h{"1CRBT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"1CRBT"}}[3], ${$h{"1CRBT"}}[1];
printf SF "</TABLE>\n";

printf SF "<BR>\n";
printf SF "<TABLE BORDER=0>\n";
printf SF "<TR><TD ALIGN=LEFT COLSPAN=11><FONT SIZE=4>HRC</FONT></TR>\n";
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>2FRADPYT</FONT></TD>\n", ${$h{"2FRADPYT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"2FRADPYT"}}[3], ${$h{"2FRADPYT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>2CHTRPZT</FONT></TD>\n", ${$h{"2CHTRPZT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"2CHTRPZT"}}[3], ${$h{"2CHTRPZT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>2DTSTATT</FONT></TD>\n", ${$h{"2DTSTATT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"2DTSTATT"}}[3], ${$h{"2DTSTATT"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>2DCENTRT</FONT></TD>\n", ${$h{"2DCENTRT"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"2DCENTRT"}}[3], ${$h{"2DCENTRT"}}[1];
printf SF "</TABLE>\n";

printf SF "<BR>\n";
printf SF "<TABLE BORDER=0>\n";
printf SF "<TR><TD ALIGN=LEFT COLSPAN=11><FONT SIZE=4>PCAD_COMP</FONT></TR>\n";
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCYZ_RW1</FONT></TD>\n", ${$h{"TCYZ_RW1"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCYZ_RW1"}}[3], ${$h{"TCYZ_RW1"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TPC_CEA</FONT></TD>\n", ${$h{"TPC_CEA"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TPC_CEA"}}[3], ${$h{"TPC_CEA"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TPC_ESE</FONT></TD>\n", ${$h{"TPC_ESE"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TPC_ESE"}}[3], ${$h{"TPC_ESE"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TMYSADA</FONT></TD>\n", ${$h{"TMYSADA"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TMYSADA"}}[3], ${$h{"TMYSADA"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCYZ_RW6</FONT></TD>\n", ${$h{"TCYZ_RW6"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCYZ_RW6"}}[3], ${$h{"TCYZ_RW6"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TPC_DEA</FONT></TD>\n", ${$h{"TPC_DEA"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TPC_DEA"}}[3], ${$h{"TPC_DEA"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TPC_FSSE</FONT></TD>\n", ${$h{"TPC_FSSE"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TPC_FSSE"}}[3], ${$h{"TPC_FSSE"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TPCP_RW2</FONT></TD>\n", ${$h{"TPCP_RW2"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TPCP_RW2"}}[3], ${$h{"TPCP_RW2"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TPC_WDA</FONT></TD>\n", ${$h{"TPC_WDA"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TPC_WDA"}}[3], ${$h{"TPC_WDA"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TPC_RCTU</FONT></TD>\n", ${$h{"TPC_RCTU"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TPC_RCTU"}}[3], ${$h{"TPC_RCTU"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TPCP_RW3</FONT></TD>\n", ${$h{"TPCP_RW3"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TPCP_RW3"}}[3], ${$h{"TPCP_RW3"}}[1];
printf SF "</TABLE>\n";

printf SF "<BR>\n";
printf SF "<TABLE BORDER=0>\n";
printf SF "<TR><TD ALIGN=LEFT COLSPAN=11><FONT SIZE=4>CCDM_COMP</FONT></TR>\n";
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCM_SSR1</FONT></TD>\n", ${$h{"TCM_SSR1"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCM_SSR1"}}[3], ${$h{"TCM_SSR1"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCM_CTU</FONT></TD>\n", ${$h{"TCM_CTU"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCM_CTU"}}[3], ${$h{"TCM_CTU"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCM_USO</FONT></TD>\n", ${$h{"TCM_USO"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCM_USO"}}[3], ${$h{"TCM_USO"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TPCM_RW4</FONT></TD>\n", ${$h{"TPCM_RW4"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TPCM_RW4"}}[3], ${$h{"TPCM_RW4"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCM_SSR2</FONT></TD>\n", ${$h{"TCM_SSR2"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCM_SSR2"}}[3], ${$h{"TCM_SSR2"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCM_OBC</FONT></TD>\n", ${$h{"TCM_OBC"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCM_OBC"}}[3], ${$h{"TCM_OBC"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCM_IFU</FONT></TD>\n", ${$h{"TCM_IFU"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCM_IFU"}}[3], ${$h{"TCM_IFU"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TPCM_RW5</FONT></TD>\n", ${$h{"TPCM_RW5"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TPCM_RW5"}}[3], ${$h{"TPCM_RW5"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCM_TX1</FONT></TD>\n", ${$h{"TCM_TX1"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCM_TX1"}}[3], ${$h{"TCM_TX1"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCM_PA1</FONT></TD>\n", ${$h{"TCM_PA1"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCM_PA1"}}[3], ${$h{"TCM_PA1"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCM_RFAS</FONT></TD>\n", ${$h{"TCM_RFAS"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCM_RFAS"}}[3], ${$h{"TCM_RFAS"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TPYSADA</FONT></TD>\n", ${$h{"TPYSADA"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TPYSADA"}}[3], ${$h{"TPYSADA"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCM_TX2</FONT></TD>\n", ${$h{"TCM_TX2"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCM_TX2"}}[3], ${$h{"TCM_TX2"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TCM_PA2</FONT></TD>\n", ${$h{"TCM_PA2"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TCM_PA2"}}[3], ${$h{"TCM_PA2"}}[1];
printf SF "</TABLE>\n";

printf SF "<BR>\n";
printf SF "<TABLE BORDER=0>\n";
printf SF "<TR><TD ALIGN=LEFT COLSPAN=11><FONT SIZE=4>EPS_COMP</FONT></TR>\n";
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TEP_PCU</FONT></TD>\n", ${$h{"TEP_PCU"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TEP_PCU"}}[3], ${$h{"TEP_PCU"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TEP_RCTU</FONT></TD>\n", ${$h{"TEP_RCTU"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TEP_RCTU"}}[3], ${$h{"TEP_RCTU"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TEP_PSU1</FONT></TD>\n", ${$h{"TEP_PSU1"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TEP_PSU1"}}[3], ${$h{"TEP_PSU1"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TEP_PSU2</FONT></TD>\n", ${$h{"TEP_PSU2"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TEP_PSU2"}}[3], ${$h{"TEP_PSU2"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>TEP_EIA</FONT></TD>\n", ${$h{"TEP_EIA"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"TEP_EIA"}}[3], ${$h{"TEP_EIA"}}[1];
printf SF "</TABLE>\n";

printf SF "<BR>\n";
printf SF "<TABLE BORDER=0>\n";
printf SF "<TR><TD ALIGN=LEFT COLSPAN=11><FONT SIZE=4>IP SIDE A</FONT></TR>\n";
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4IP15AV</FONT></TD>\n", ${$h{"4IP15AV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4IP15AV"}}[3], ${$h{"4IP15AV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4IN15AV</FONT></TD>\n", ${$h{"4IN15AV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4IN15AV"}}[3], ${$h{"4IN15AV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4IP5AV</FONT></TD>\n", ${$h{"4IP5AV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4IP5AV"}}[3], ${$h{"4IP5AV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4VRMHAV</FONT></TD>\n", ${$h{"4VRMHAV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4VRMHAV"}}[3], ${$h{"4VRMHAV"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4PRTAV</FONT></TD>\n", ${$h{"4PRTAV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4PRTAV"}}[3], ${$h{"4PRTAV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4CSDHAV</FONT></TD>\n", ${$h{"4CSDHAV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4CSDHAV"}}[3], ${$h{"4CSDHAV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4CSDOAV</FONT></TD>\n", ${$h{"4CSDOAV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4CSDOAV"}}[3], ${$h{"4CSDOAV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4VRMOAV</FONT></TD>\n", ${$h{"4VRMOAV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4VRMOAV"}}[3], ${$h{"4VRMOAV"}}[1];
printf SF "</TABLE>\n";

printf SF "<BR>\n";
printf SF "<TABLE BORDER=0>\n";
printf SF "<TR><TD ALIGN=LEFT COLSPAN=11><FONT SIZE=4>IP SIDE B</FONT></TR>\n";
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4IP15BV</FONT></TD>\n", ${$h{"4IP15BV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4IP15BV"}}[3], ${$h{"4IP15BV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4IN15BV</FONT></TD>\n", ${$h{"4IN15BV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4IN15BV"}}[3], ${$h{"4IN15BV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4IP5BV</FONT></TD>\n", ${$h{"4IP5BV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4IP5BV"}}[3], ${$h{"4IP5BV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4VRMHBV</FONT></TD>\n", ${$h{"4VRMHBV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4VRMHBV"}}[3], ${$h{"4VRMHBV"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4PRTBV</FONT></TD>\n", ${$h{"4PRTBV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4PRTBV"}}[3], ${$h{"4PRTBV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4CSDHBV</FONT></TD>\n", ${$h{"4CSDHBV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4CSDHBV"}}[3], ${$h{"4CSDHBV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4CSDOBV</FONT></TD>\n", ${$h{"4CSDOBV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4CSDOBV"}}[3], ${$h{"4CSDOBV"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4VRMOBV</FONT></TD>\n", ${$h{"4VRMOBV"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4VRMOBV"}}[3], ${$h{"4VRMOBV"}}[1];
printf SF "</TABLE>\n";

printf SF "<BR>\n";
printf SF "<TABLE BORDER=0>\n";
printf SF "<TR><TD><TABLE BORDER=0>\n";
printf SF "<TR><TD ALIGN=LEFT COLSPAN=11><FONT SIZE=4>SEA 1</FONT></TR>\n";
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1PWR01</FONT></TD>\n", ${$h{"4S1PWR01"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1PWR01"}}[3], ${$h{"4S1PWR01"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4SP51V</FONT></TD>\n", ${$h{"4SP51V"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4SP51V"}}[3], ${$h{"4SP51V"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1PWR02</FONT></TD>\n", ${$h{"4S1PWR02"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1PWR02"}}[3], ${$h{"4S1PWR02"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1IMOK</FONT></TD>\n", ${$h{"4S1IMOK"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1IMOK"}}[3], ${$h{"4S1IMOK"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1PWR03</FONT></TD>\n", ${$h{"4S1PWR03"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1PWR03"}}[3], ${$h{"4S1PWR03"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1IOMX</FONT></TD>\n", ${$h{"4S1IOMX"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1IOMX"}}[3], ${$h{"4S1IOMX"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1PWR04</FONT></TD>\n", ${$h{"4S1PWR04"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1PWR04"}}[3], ${$h{"4S1PWR04"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1PWR05</FONT></TD>\n", ${$h{"4S1PWR05"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1PWR05"}}[3], ${$h{"4S1PWR05"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1PWR06</FONT></TD>\n", ${$h{"4S1PWR06"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1PWR06"}}[3], ${$h{"4S1PWR06"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1PWR07</FONT></TD>\n", ${$h{"4S1PWR07"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1PWR07"}}[3], ${$h{"4S1PWR07"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1PWR08</FONT></TD>\n", ${$h{"4S1PWR08"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1PWR08"}}[3], ${$h{"4S1PWR08"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1PWR09</FONT></TD>\n", ${$h{"4S1PWR09"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1PWR09"}}[3], ${$h{"4S1PWR09"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S1PWR10</FONT></TD>\n", ${$h{"4S1PWR10"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S1PWR10"}}[3], ${$h{"4S1PWR10"}}[1];
printf SF "</TABLE>\n";

printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD><TABLE BORDER=0>\n";
printf SF "<TR><TD ALIGN=LEFT COLSPAN=11><FONT SIZE=4>SEA 2</FONT></TR>\n";
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2PWR01</FONT></TD>\n", ${$h{"4S2PWR01"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2PWR01"}}[3], ${$h{"4S2PWR01"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4SP52V</FONT></TD>\n", ${$h{"4SP52V"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%.3f</FONT></TD>\n", ${$h{"4SP52V"}}[3], ${$h{"4SP52V"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2PWR02</FONT></TD>\n", ${$h{"4S2PWR02"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2PWR02"}}[3], ${$h{"4S2PWR02"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2IMOK</FONT></TD>\n", ${$h{"4S2IMOK"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2IMOK"}}[3], ${$h{"4S2IMOK"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2PWR03</FONT></TD>\n", ${$h{"4S2PWR03"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2PWR03"}}[3], ${$h{"4S2PWR03"}}[1];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2>&nbsp</FONT></TD>\n";
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2IOMX</FONT></TD>\n", ${$h{"4S2IOMX"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2IOMX"}}[3], ${$h{"4S2IOMX"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2PWR04</FONT></TD>\n", ${$h{"4S2PWR04"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2PWR04"}}[3], ${$h{"4S2PWR04"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2PWR05</FONT></TD>\n", ${$h{"4S2PWR05"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2PWR05"}}[3], ${$h{"4S2PWR05"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2PWR06</FONT></TD>\n", ${$h{"4S2PWR06"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2PWR06"}}[3], ${$h{"4S2PWR06"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2PWR07</FONT></TD>\n", ${$h{"4S2PWR07"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2PWR07"}}[3], ${$h{"4S2PWR07"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2PWR08</FONT></TD>\n", ${$h{"4S2PWR08"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2PWR08"}}[3], ${$h{"4S2PWR08"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2PWR09</FONT></TD>\n", ${$h{"4S2PWR09"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2PWR09"}}[3], ${$h{"4S2PWR09"}}[1];
printf SF "<TR><TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>4S2PWR10</FONT></TD>\n", ${$h{"4S2PWR10"}}[3];
printf SF "<TD ALIGN=LEFT><FONT SIZE=2 COLOR=%s>%s</FONT></TD>\n", ${$h{"4S2PWR10"}}[3], ${$h{"4S2PWR10"}}[1];
printf SF "</TABLE>\n";
printf SF "</TABLE>\n";
printf SF "<BR>\n";
close SF;

print_links("$outfile");
print SF "</BODY></HTML>\n";
close SF;
# end
}
1;
