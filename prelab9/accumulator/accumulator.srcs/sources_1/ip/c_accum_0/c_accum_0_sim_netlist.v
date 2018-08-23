// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Fri May 26 15:32:58 2017
// Host        : DESKTOP-HQFO937 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Chris/Desktop/ECE-C302/prelab9/accumulator/accumulator.srcs/sources_1/ip/c_accum_0/c_accum_0_sim_netlist.v
// Design      : c_accum_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_accum_0,c_accum_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_10,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module c_accum_0
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
  c_accum_0_c_accum_v12_0_10 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_accum_v12_0_10" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_accum_0_c_accum_v12_0_10
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
  c_accum_0_c_accum_v12_0_10_viv i_synth
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
prH1gedPvoaqFksl6NE8lxqLPzjcz3hbXxeUWpJ0e/qouWq4oHG3hv/H+8gKAFqX+cS1Hs3FfqX9
xV0inS67Qs1ZxKAOFVwO83k/LAqaeOvS3die4DpdkyohfWwm0QvZ+TTNXeBv3REwa05lmFtZnpgd
Lierdv5ThmRyEq59fOIpZgWYzrjIHQEBvntcr82FSmWQnGAART6o/dNKoROZ76GtLkS7SHrXdO72
BzlzbYZH3EmZn9aNqMK4JPIM2+yLZ/jndmHEYLzsTq+BKz9/H3HehQnWPQF+BqfCzmA6vW2OAWXm
IW4zBhCyrI+scm5j9aQmmXVrEakWloSzpFavgA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
HEozaBn7W8ewjcrx59of3JzDzWQ4iLc/N4ER1Z8g9nvmWvhJo3pKaimP0tw6z26elFIQgy4oPUhX
dTpBz2Kb3GGtjlSwVpMDjo15gdaAYEk+9EcMz8ccDCye2bQBr7t86f1BgLArb2pUb3WcuJ9UpX+r
mBMxrnXmmzvc+UVhyvjrCRhlpmW37mq8UG3M0G8qIK5hkJMx+fnCpxqUqzJucIoxH5CYebl9qMNx
EKhCSVyc3n37mjeJGWvnhyqGO3F1SPtcqpLLrHWCUBqpgmDNGpEQO+9T8Ta9xaIasctAhOA5qLlA
oSr/1rvgleFgAQqRe3iBW3n8EAQoHXk3uu1Vsg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9712)
`pragma protect data_block
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
prRzfI9YdbZYDUEGEBZGswBS7jQJjg==
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
