// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Fri May 26 15:14:23 2017
// Host        : DESKTOP-HQFO937 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_accum_0_stub.v
// Design      : c_accum_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_accum_v12_0_10,Vivado 2017.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(B, CLK, BYPASS, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="B[15:0],CLK,BYPASS,SCLR,Q[47:0]" */;
  input [15:0]B;
  input CLK;
  input BYPASS;
  input SCLR;
  output [47:0]Q;
endmodule
