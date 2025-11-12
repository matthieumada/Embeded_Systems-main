// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Nov 11 15:56:11 2025
// Host        : delinm-GF63-Thin-10SCSR running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/delinm/Documents/Embeded_Systems-main/Assign_3/FPGA_AI/src/vhdl/AI_trial/AI_trial.gen/sources_1/bd/design_1/ip/design_1_nn_inference_0_1/design_1_nn_inference_0_1_stub.v
// Design      : design_1_nn_inference_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "nn_inference,Vivado 2020.2" *)
module design_1_nn_inference_0_1(input_img_ce0, ap_clk, ap_rst, ap_start, ap_done, 
  ap_idle, ap_ready, ap_return, input_img_address0, input_img_q0)
/* synthesis syn_black_box black_box_pad_pin="input_img_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],input_img_address0[6:0],input_img_q0[31:0]" */;
  output input_img_ce0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]ap_return;
  output [6:0]input_img_address0;
  input [31:0]input_img_q0;
endmodule
