// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Nov 11 15:53:18 2025
// Host        : delinm-GF63-Thin-10SCSR running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/delinm/Documents/Embeded_Systems-main/Assign_3/FPGA_AI/src/vhdl/AI_trial/AI_trial.gen/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_bram_0/design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_4 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59984)
`pragma protect data_block
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
EPCUndmyoHTepBbUk6ihCN/3EyI=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
