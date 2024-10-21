#!/bin/bash

#*****************************************************************
# This is a basic script for processing the GITM Event Study
#*****************************************************************

#------- create a new work spac ---------------------------------
echo 'create work space for event study 2012 Otc ......'
cd ~/Desktop/
mkdir ev2012_otc
cd ev2012_otc
mkdir sate_input
cd sate_input
mkdir f15 f16 f17 f18
sleep 1

#---------------- copy source data from local folder -------------
echo 'start copy data from local ......'
cd /Users/yxh5920/Documents/2019/Data/Qingyu_DMSP_data/ascii/F15/f15_2012_10/
cp f15_rl12281* f15_rl12282* f15_rl12283* ~/Desktop/ev2012_otc/sate_input/f15
cd /Users/yxh5920/Documents/2019/Data/Qingyu_DMSP_data/ascii/F16/f16_2012_10/
cp f16_rl12281* f16_rl12282* f16_rl12283* ~/Desktop/ev2012_otc/sate_input/f16
cd /Users/yxh5920/Documents/2019/Data/Qingyu_DMSP_data/ascii/F17/f17_2012_10/
cp f17_rl12281* f17_rl12282* f17_rl12283* ~/Desktop/ev2012_otc/sate_input/F17 
cd /Users/yxh5920/Documents/2019/Data/Qingyu_DMSP_data/ascii/F18/f18_2012_10/
cp f18_rl12281* f18_rl12282* f18_rl12283* ~/Desktop/ev2012_otc/sate_input/f18
echo 'data copy completed :D'
sleep 1

#---------------- create script for DMSP readin files -------------
cd ~/Desktop/
cp script_f15.py sate_rewrite_f15.py sate_reader_funct.py ~/Desktop/ev2012_otc/sate_input/f15
cd ~/Desktop/ev2012_otc/sate_input/f15
chmod +x *.py
./script_f15.py
echo 'start rewrite DMSP F15 ......'
echo '***********************************'
chmod +x run.sh
mkdir dmsp_pot
./run.sh
echo 'DMSP F15 Completed!!'
sleep 10

cd ~/Desktop/
cp script.py sate_rewrite.py sate_reader_funct.py ~/Desktop/ev2012_otc/sate_input/f16
cd ~/Desktop/ev2012_otc/sate_input/f16
chmod +x *.py
./script.py
echo 'start rewrite DMSP F16 ......'
echo '***********************************'
chmod +x run.sh
mkdir dmsp_pot
./run.sh
echo 'DMSP F16 Completed!!'
sleep 10

cp script.py sate_rewrite.py sate_reader_funct.py ~/Desktop/ev2012_otc/sate_input/f17
cd ~/Desktop/ev2012_otc/sate_input/f17
chmod +x *.py
./script.py
echo 'start rewrite DMSP F17 ......'
echo '***********************************'
chmod +x run.sh
mkdir dmsp_pot
./run.sh
echo 'DMSP F17 Completed!!'
sleep 10

cp script.py sate_rewrite.py sate_reader_funct.py ~/Desktop/ev2012_otc/sate_input/f18
cd ~/Desktop/ev2012_otc/sate_input/f18
chmod +x *.py
./script.py
echo 'start rewrite DMSP F18 ......'
echo '***********************************'
chmod +x run.sh
mkdir dmsp_pot
./run.sh
echo 'DMSP F18 Completed!!'
sleep 10

#---------------- re-write DMSP data for GITM input ----------
cd ~/Desktop/
cp script.py ~/Desktop/ev2012_otc/sate_input/f15
