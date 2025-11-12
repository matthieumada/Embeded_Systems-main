############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AI_HLS
set_top nn_inference
add_files matmul.hpp
add_files matmul.cpp
add_files -tb matmul_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/delinm/Documents/Embeded_Systems-main/Assign_3/FPGA_AI/src/hls/AI_HLS/nn_inference.zip -rtl vhdl
source "./AI_HLS/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -output /home/delinm/Documents/Embeded_Systems-main/Assign_3/FPGA_AI/src/hls/AI_HLS/nn_inference.zip
