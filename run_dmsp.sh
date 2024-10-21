#!/bin/bash

#*****************************************************************
# This is a basic script for processing the GITM Event Study
#*****************************************************************

#------- create a new work spac ---------------------------------
echo 'create work space for event study 2012 Otc ......'
mkdir 2015_mar
cd 2015_mar
mkdir sate_input
cd sate_input
mkdir f15 f16 f17 f18
sleep 1

#---------------- copy source data from local folder -------------
echo 'start copy data from local ......'
cd /Users/yxh5920/Documents/2019/Data/Qingyu_DMSP_data/ascii/F15/f15_2015_03/
cp f15_rl15073* f15_rl15074* f15_rl15075* f15_rl15076* /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/f15  
cd /Users/yxh5920/Documents/2019/Data/Qingyu_DMSP_data/ascii/F16/f16_2015_03/
cp f16_rl15073* f16_rl15074* f16_rl15075* f16_rl15076* /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/f16
cd /Users/yxh5920/Documents/2019/Data/Qingyu_DMSP_data/ascii/F17/f17_2015_03/
cp f17_rl15073* f17_rl15074* f17_rl15075* f17_rl15076* /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/F17 
cd /Users/yxh5920/Documents/2019/Data/Qingyu_DMSP_data/ascii/F18/f18_2015_03/
cp f18_rl15073* f18_rl15074* f18_rl15075* f18_rl15076* /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/f18
echo 'data copy completed :D'
sleep 1

#---------------- create script for DMSP readin files -------------
cd ~/Desktop/
cp script1.py script_f15.py sate_rewrite_f15.py sate_reader_funct.py /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/f15
cd /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/f15
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
cp script1.py script.py sate_rewrite.py sate_reader_funct.py /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/f16
cd /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/f16
chmod +x *.py
./script.py
echo 'start rewrite DMSP F16 ......'
echo '***********************************'
chmod +x run.sh
mkdir dmsp_pot
./run.sh
echo 'DMSP F16 Completed!!'
sleep 10

cp script1.py script.py sate_rewrite.py sate_reader_funct.py /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/f17
cd /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/f17
chmod +x *.py
./script.py
echo 'start rewrite DMSP F17 ......'
echo '***********************************'
chmod +x run.sh
mkdir dmsp_pot
./run.sh
echo 'DMSP F17 Completed!!'
sleep 10

cp script1.py script.py sate_rewrite.py sate_reader_funct.py /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/f18
cd /Volumes/Jonas/work_space/storm_event/2015_mar/sate_input/f18
chmod +x *.py
./script.py
echo 'start rewrite DMSP F18 ......'
echo '***********************************'
chmod +x run.sh
mkdir dmsp_pot
./run.sh
echo 'DMSP F18 Completed!!'
sleep 10


