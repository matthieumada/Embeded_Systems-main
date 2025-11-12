// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Nov 11 15:52:05 2025
// Host        : delinm-GF63-Thin-10SCSR running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/delinm/Documents/Embeded_Systems-main/Assign_3/FPGA_AI/src/vhdl/AI_trial/AI_trial.gen/sources_1/bd/design_1/ip/design_1_fix_address_0_0/design_1_fix_address_0_0_stub.v
// Design      : design_1_fix_address_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fix_address,Vivado 2020.2" *)
module design_1_fix_address_0_0(addr_in, addr_out)
/* synthesis syn_black_box black_box_pad_pin="addr_in[6:0],addr_out[31:0]" */;
  input [6:0]addr_in;
  output [31:0]addr_out;
endmodule
