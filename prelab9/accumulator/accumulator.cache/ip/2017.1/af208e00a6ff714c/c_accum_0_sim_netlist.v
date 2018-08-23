// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Fri May 26 15:32:58 2017
// Host        : DESKTOP-HQFO937 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_accum_0_sim_netlist.v
// Design      : c_accum_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_accum_0,c_accum_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_10,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (B,
    CLK,
    BYPASS,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 bypass_intf DATA" *) input BYPASS;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [7:0]Q;

  wire [3:0]B;
  wire BYPASS;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_add_mode = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_width = "4" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "1" *) 
  (* c_has_c_in = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* c_scale = "0" *) 
  (* c_verbosity = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_10 U0
       (.ADD(1'b1),
        .B(B),
        .BYPASS(BYPASS),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "1" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_OUT_WIDTH = "8" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_10
   (B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [7:0]Q;

  wire [3:0]B;
  wire BYPASS;
  wire CLK;
  wire [7:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_add_mode = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_width = "4" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "1" *) 
  (* c_has_c_in = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "8" *) 
  (* c_scale = "0" *) 
  (* c_verbosity = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_10_viv i_synth
       (.ADD(1'b0),
        .B(B),
        .BYPASS(BYPASS),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
XNFObWUhioxwecG2MmQxx5apyDT4/F2d/VwGRo+lQQvT8Gy0TlnngO+qbql8RHdUNBGKp4XlL+Om
fC2DHmlmeg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
baMKow3z2xfB+qNfBlq9sUz5cYjv/0mvWJOFdvoUNnVO5HviILFYfFP61Fiz7CTA80sr6AgbL+cc
L388FolLNZIt+2gGx0bAdc8MGf6B6YBCAg5sojNBPIjtb/YXkwoAdeXnS7SjnMnSSAhHC3D4ZSPZ
Gx/qBGqTjkzmm4Dy4XI=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QqIOFFBaJfSQJtnGbPLB1qXEaGZ4mgzp5vxtdSimpGIMEmK6w5956BXE/xfAtYg87VfV9Akp5/P3
Vhu7ovEXJsoeFDTqGnpFu0PeRpQMI3QQntTpTUw4Ejw4k7Tf3DYT1QBDPVEHZ3ZP02iihVjyCV5b
IYBlr8hUSuQ3Sd8o0JM=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MG/M/h+iDUyMDOVTLTD2M2w74osbvsvej/otbbJqzNw3CvJJdBSO8mlMJx/9OzWnlJ9WN3bVdQoU
dK/aUu2C0ImfvxK1N3VF9+T4UniMTPWFrfSvkUig32tVdVTE7FxBuRQ/DTMmNhMpWw4V4aFkx1ZY
hnct/bgzj1yDEg19wZc2NFtOat31u/Kdtf2frhkH/2/34NNIRpmXXQTaqHX5GcBMs5W5xH7yT/VB
8YiRlMNZWgCqWIiMOzA/sXZCUGCxiH9CqSFnUEqFN6Air0qb9z7/LhtCbS1U/MWGjHVw4sDt9cIP
9eVD23u09BtD+7+diqrnLlgtxXKW5wBZp+9t9w==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SeaS/gpV3eC72DprAP4IeSzx7O6LDDFf/jFRpgQch69OnKt5UDXSqcdKayRebcE1yj0elr18cxoj
BJ5bgjDKLGg1jSVc9sxF3V0Xw38WU8QV5+8WJTn7pFAIZFVgTl2uXudGz2sSf+maOlX7MExuSbu8
aWKVae9nqif+DP/V3a22OTRChzirGPBv5r7fdhFiqCjenGBsaBIZtvGXHtNCUxO/o2DQjlvsFmab
mmDngkeU0m+NuGGr4V3YFHhxeewe+OCydD1vbdwUe38mRdFZvbyMoALr0PzbDcJ3DEhihzMSrJsr
KKqY9jM1unoU/Q4e0NZfa8ZJgufHiFAK6M2eKQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NDAZ3evyzCmXyx/m1dW8S811QcQu4FWRmO0aIpyLDQRw4AtA34zROo1NshGYS6jeynZOt85k8/Ew
1vVGc4ziLAjbq2gYCQO9PH6tPgEVXJ1E3yQ4zjCE5202SUb4n+HKxABcUXdeHx0C1+2vH3+/1B1M
Rp1CbKHZuWXMzNvwGyhQtOLmIqEw8xXW400mKpfw/3sLdBWRMjgp+IslbSMX4CHMU8cbtwp4Y1p8
o0LtRRmOIvSmcfrcBZEdG8SlpxLSTMvh+OA3LmfaMVMmU4sJ21dYaD1uTcTqSZzlo1TrLKXvvwl0
6ljnsKkL7Op13f/JGgENjclkxM1gqL3TuMoR+A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Epm2G//w6mbEtfRo9eig9X9+6vI+AyEoxQw8m3Xy151c1CbN+v9kMqKj/gPXLKoDdDENcpTB0bSp
/EP3ZveNvsm2l6tR5KNlKszTUL3UPwiEQjTWIu5dv6UOgpJWWK9V/zZXt6ZMtb6ypWhczmn0jIG5
IlPNUMbQQ2y+BDfFzuvAsU6c1BFdgzYaqmiKaTe6RMaRZ0fLZYWtTwL4qwxoMtz4bat3a0Dp69UO
IWOma47ysrxmc2lzsdfYSYvm9m2SWdsF8rwNpQOGB/u3dRMSldIO6VWTRnBowLMSP922AHoPzSDJ
ppGA8uIJBBnFuJeHpsdocv5zhS8BV7NAo1qSvw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
zAf+i///amC3JEK6Mn0CI+Izu+5Vrze1YsdEr3RdXWwgU2Q2PDMREqblJoxcAF1fGqlI9Eki1J2r
odHfMYDYns1/o0SK4E4YkQ3DJiQpwCBgfiuWmLGoEulatJhNetxkbRPPRoG1xJhkJWxfgezajnLE
uVV0PrqomVKlx0sOG+WUPHQb1Nw/d7G3mz0PR+pQMDAOx3Ia5R6HO+AhsIJmkVpY41Riex4A+wbL
0nNS6TqiJkAmG6Mkr8csbQNExB67MxbRBKEXi4t5CRqsdTGI1GzoYfphnZn6i/Nq8bXQ+OAVdngO
BUOF3bIoT3by7ps9QrijCmSoqhxEBIbDtSkYtA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9760)
`pragma protect data_block
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
gaZ8KWWAk8b0xQYpGQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
