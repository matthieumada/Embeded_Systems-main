-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Nov 11 15:56:12 2025
-- Host        : delinm-GF63-Thin-10SCSR running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/delinm/Documents/Embeded_Systems-main/Assign_3/FPGA_AI/src/vhdl/AI_trial/AI_trial.gen/sources_1/bd/design_1/ip/design_1_nn_inference_0_1/design_1_nn_inference_0_1_stub.vhdl
-- Design      : design_1_nn_inference_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_nn_inference_0_1 is
  Port ( 
    input_img_ce0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    input_img_address0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    input_img_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_nn_inference_0_1;

architecture stub of design_1_nn_inference_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input_img_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],input_img_address0[6:0],input_img_q0[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "nn_inference,Vivado 2020.2";
begin
end;
