// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Wed May 24 14:22:21 2017
// Host        : DESKTOP-HQFO937 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Chris/Desktop/ECE-C302/lab8/fifo16x4/fifo16x4.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0_stub.v
// Design      : fifo_generator_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_1_4,Vivado 2017.1" *)
module fifo_generator_0(clk, rst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,din[3:0],wr_en,rd_en,dout[3:0],full,empty" */;
  input clk;
  input rst;
  input [3:0]din;
  input wr_en;
  input rd_en;
  output [3:0]dout;
  output full;
  output empty;
endmodule
