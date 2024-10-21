#!/bin/bash

#*****************************************************************
# This is a basic script for processing the GITM Event Study
#*****************************************************************

#------- create a new work spac ---------------------------------
echo 'working on 2015-03-14 ......'
./fac_plot_script.py ./ampere/20150314_nh_correct.nc ./ampere/20150314_sh_correct.nc 20150314
sleep 2

echo 'working on 2015-03-15 ......'
./fac_plot_script.py ./ampere/20150315_nh_correct.nc ./ampere/20150315_sh_correct.nc 20150315
sleep 2

echo 'working on 2015-03-16 ......'
./fac_plot_script.py ./ampere/20150316_nh_correct.nc ./ampere/20150316_sh_correct.nc 20150316
sleep 2

#echo 'working on 2015-03-17 ......'
#./fac_plot_script.py ./ampere/20150317_nh.nc ./ampere/20150317_sh.nc 20150317
#sleep 2

echo 'working on 2015-03-18 ......'
./fac_plot_script.py ./ampere/20150318_nh_correct.nc ./ampere/20150318_sh_correct.nc 20150318
sleep 2