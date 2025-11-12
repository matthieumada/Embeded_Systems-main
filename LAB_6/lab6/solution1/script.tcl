############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab6
set_top foo
add_files trial_1.cpp
add_files -tb example_hls_tb.cpp
add_files -tb trial_1.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/delinm/Documents/Embeded_Systems-main/LAB_6/lab6/foo.zip -rtl vhdl
#source "./lab6/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -output /home/delinm/Documents/Embeded_Systems-main/LAB_6/lab6/foo.zip
