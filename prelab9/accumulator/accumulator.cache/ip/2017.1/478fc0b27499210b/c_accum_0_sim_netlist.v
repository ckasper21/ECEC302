// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Fri May 26 15:18:45 2017
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [15:0]Q;

  wire [3:0]B;
  wire BYPASS;
  wire CLK;
  wire [15:0]Q;
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
  (* c_out_width = "16" *) 
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
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_OUT_WIDTH = "16" *) 
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
  output [15:0]Q;

  wire [3:0]B;
  wire BYPASS;
  wire CLK;
  wire [15:0]Q;
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
  (* c_out_width = "16" *) 
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
g/BIgpPLTCArSx/lhwtg4QgMxzLFgN2pYL/wkOzefHxeQdmsWMzXs0bthWCrFE39Ic9Gz0aG9dzx
uZIqJy4EebigGySiiyCnukRsnrXaf66am/sWhzRx0u9gf3qHXzU1Ps1YGAGC4r8GwsnTTonwqCgo
nmhnDXOG0yMjLNKKr+ZjMHtvsIiPSnmyZs6cQHawarB94x02cQpEJ7cBA4QRuB5gJbJSrT056C2k
nlzEWd260wf7aiI4RaqyKSuLidomXgo/Nx4uCA3OIo72t76nhv2IDzFfHdiY+bqFbjuWGigJSIvf
2E6RVzy2axhwGEB4aIqwizcwLWAEZRQCBgVJEQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
aE4NImOVbscypK0n0burzr3se+CKYAorNCTEx0XsPylkz5lnA9U/IT0amCna/q1j+H26ULvJ7WBJ
FqRzhDUxq73beEJ5SkkSuzuS7WKaXqWizNJq6be1PT2qkNHUSiAOp6QOsSy2yMzJXQUr5Tk+q1LK
d5cl4+bA9blLIr6an9+4qwEaSUtwaB50PW5/n4ydEQQlLkvUN3FtXHPhttxFBE1oWXNjr8mGK7yc
+hLUaLgxgkufUlYZAbhGC6w4EJXA8zKoMvsPVIwnZufpW/VSzp2yGNaNTheDLOtlEtCm17VOUmqf
ha+BCFUtA8telC4M8sHpLkIu3J6j1SjAPTaTjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16080)
`pragma protect data_block
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
IwNfCmg+
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
