// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Tue Feb 16 12:26:12 2016
// Host        : MST-Laptop running 64-bit Manjaro Linux
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/steven/Dropbox/Verilog/Homework/Assignment6/Problem4/Problem4.sim/sim_1/impl/timing/Problem4Sim_time_impl.v
// Design      : Problem4Mod
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "6ef01d97" *) 
(* NotValidForBitStream *)
module Problem4Mod
   (a,
    b,
    result);
  input [3:0]a;
  input [3:0]b;
  output [7:0]result;

  wire [3:0]a;
  wire [3:0]a_IBUF;
  wire [2:0]\^b ;
  wire \b[3] ;
  wire \b[3]_IBUF ;
  wire [2:0]b_IBUF;
  wire [7:0]result;
  wire [6:0]result_OBUF;
  wire \result_OBUF[3]_inst_i_2_n_0 ;
  wire \result_OBUF[3]_inst_i_3_n_0 ;
  wire \result_OBUF[4]_inst_i_2_n_0 ;
  wire \result_OBUF[4]_inst_i_3_n_0 ;
  wire \result_OBUF[5]_inst_i_2_n_0 ;
  wire \result_OBUF[6]_inst_i_2_n_0 ;

initial begin
 $sdf_annotate("Problem4Sim_time_impl.sdf",,,,"tool_control");
end
  assign \^b [2:0] = b[2:0];
  assign \b[3]  = b[3];
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  (* OPT_INSERTED *) 
  IBUF \b[3]_IBUF_inst 
       (.I(\b[3] ),
        .O(\b[3]_IBUF ));
  IBUF \b_IBUF[0]_inst 
       (.I(\^b [0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(\^b [1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(\^b [2]),
        .O(b_IBUF[2]));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .O(result_OBUF[0]));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(a_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(result_OBUF[1]));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  LUT6 #(
    .INIT(64'h4B77788878887888)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(b_IBUF[2]),
        .I1(a_IBUF[0]),
        .I2(a_IBUF[2]),
        .I3(b_IBUF[0]),
        .I4(a_IBUF[1]),
        .I5(b_IBUF[1]),
        .O(result_OBUF[2]));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  MUXF7 \result_OBUF[3]_inst_i_1 
       (.I0(\result_OBUF[3]_inst_i_2_n_0 ),
        .I1(\result_OBUF[3]_inst_i_3_n_0 ),
        .O(result_OBUF[3]),
        .S(b_IBUF[2]));
  LUT6 #(
    .INIT(64'hC3FF7800F000F000)) 
    \result_OBUF[3]_inst_i_2 
       (.I0(a_IBUF[0]),
        .I1(a_IBUF[1]),
        .I2(a_IBUF[3]),
        .I3(b_IBUF[0]),
        .I4(a_IBUF[2]),
        .I5(b_IBUF[1]),
        .O(\result_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4748477747B77888)) 
    \result_OBUF[3]_inst_i_3 
       (.I0(a_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(a_IBUF[2]),
        .I3(b_IBUF[1]),
        .I4(a_IBUF[0]),
        .I5(a_IBUF[1]),
        .O(\result_OBUF[3]_inst_i_3_n_0 ));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  MUXF7 \result_OBUF[4]_inst_i_1 
       (.I0(\result_OBUF[4]_inst_i_2_n_0 ),
        .I1(\result_OBUF[4]_inst_i_3_n_0 ),
        .O(result_OBUF[4]),
        .S(b_IBUF[2]));
  LUT6 #(
    .INIT(64'h13FF880000000000)) 
    \result_OBUF[4]_inst_i_2 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[2]),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[0]),
        .I4(a_IBUF[3]),
        .I5(b_IBUF[1]),
        .O(\result_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h47B845BF40B748C0)) 
    \result_OBUF[4]_inst_i_3 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[3]),
        .I2(b_IBUF[1]),
        .I3(a_IBUF[0]),
        .I4(a_IBUF[1]),
        .I5(a_IBUF[2]),
        .O(\result_OBUF[4]_inst_i_3_n_0 ));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(\result_OBUF[5]_inst_i_2_n_0 ),
        .I1(b_IBUF[2]),
        .O(result_OBUF[5]));
  LUT6 #(
    .INIT(64'h1CB00F10E14F70F0)) 
    \result_OBUF[5]_inst_i_2 
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .I2(a_IBUF[3]),
        .I3(a_IBUF[0]),
        .I4(a_IBUF[2]),
        .I5(a_IBUF[1]),
        .O(\result_OBUF[5]_inst_i_2_n_0 ));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(\result_OBUF[6]_inst_i_2_n_0 ),
        .I1(b_IBUF[2]),
        .O(result_OBUF[6]));
  LUT6 #(
    .INIT(64'h0AFF490064E07F00)) 
    \result_OBUF[6]_inst_i_2 
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .I2(a_IBUF[0]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[2]),
        .I5(a_IBUF[1]),
        .O(\result_OBUF[6]_inst_i_2_n_0 ));
  OBUF \result_OBUF[7]_inst 
       (.I(1'b0),
        .O(result[7]));
endmodule
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
