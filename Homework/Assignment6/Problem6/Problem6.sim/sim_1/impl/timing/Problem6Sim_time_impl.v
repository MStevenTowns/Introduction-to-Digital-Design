// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Tue Feb 16 09:29:41 2016
// Host        : MST-Laptop running 64-bit Manjaro Linux
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/steven/Dropbox/Verilog/Homework/Assignment6/Problem6/Problem6.sim/sim_1/impl/timing/Problem6Sim_time_impl.v
// Design      : Problem6Mod
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "972a08f4" *) 
(* NotValidForBitStream *)
module Problem6Mod
   (a,
    b,
    subtract,
    sum,
    error);
  input [7:0]a;
  input [7:0]b;
  input subtract;
  output [7:0]sum;
  output error;

  wire [7:0]a;
  wire [7:0]a_IBUF;
  wire [7:0]b;
  wire [7:0]b_IBUF;
  wire error;
  wire error_OBUF;
  wire subtract;
  wire subtract_IBUF;
  wire [7:0]sum;
  wire [7:0]sum_OBUF;
  wire \sum_OBUF[3]_inst_i_2_n_0 ;
  wire \sum_OBUF[5]_inst_i_2_n_0 ;
  wire \sum_OBUF[7]_inst_i_2_n_0 ;

initial begin
 $sdf_annotate("Problem6Sim_time_impl.sdf",,,,"tool_control");
end
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
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  OBUF error_OBUF_inst
       (.I(error_OBUF),
        .O(error));
  LUT6 #(
    .INIT(64'h0941092841602860)) 
    error_OBUF_inst_i_1
       (.I0(b_IBUF[7]),
        .I1(subtract_IBUF),
        .I2(a_IBUF[7]),
        .I3(\sum_OBUF[7]_inst_i_2_n_0 ),
        .I4(b_IBUF[6]),
        .I5(a_IBUF[6]),
        .O(error_OBUF));
  IBUF subtract_IBUF_inst
       (.I(subtract),
        .O(subtract_IBUF));
  OBUF \sum_OBUF[0]_inst 
       (.I(sum_OBUF[0]),
        .O(sum[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum_OBUF[0]_inst_i_1 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .O(sum_OBUF[0]));
  OBUF \sum_OBUF[1]_inst 
       (.I(sum_OBUF[1]),
        .O(sum[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h69966666)) 
    \sum_OBUF[1]_inst_i_1 
       (.I0(a_IBUF[1]),
        .I1(b_IBUF[1]),
        .I2(subtract_IBUF),
        .I3(a_IBUF[0]),
        .I4(b_IBUF[0]),
        .O(sum_OBUF[1]));
  OBUF \sum_OBUF[2]_inst 
       (.I(sum_OBUF[2]),
        .O(sum[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_OBUF[2]_inst_i_1 
       (.I0(\sum_OBUF[3]_inst_i_2_n_0 ),
        .I1(a_IBUF[2]),
        .I2(b_IBUF[2]),
        .I3(subtract_IBUF),
        .O(sum_OBUF[2]));
  OBUF \sum_OBUF[3]_inst 
       (.I(sum_OBUF[3]),
        .O(sum[3]));
  LUT6 #(
    .INIT(64'h4ED8B127B1274ED8)) 
    \sum_OBUF[3]_inst_i_1 
       (.I0(a_IBUF[2]),
        .I1(b_IBUF[2]),
        .I2(subtract_IBUF),
        .I3(\sum_OBUF[3]_inst_i_2_n_0 ),
        .I4(a_IBUF[3]),
        .I5(b_IBUF[3]),
        .O(sum_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBE28B8B8)) 
    \sum_OBUF[3]_inst_i_2 
       (.I0(a_IBUF[1]),
        .I1(b_IBUF[1]),
        .I2(subtract_IBUF),
        .I3(a_IBUF[0]),
        .I4(b_IBUF[0]),
        .O(\sum_OBUF[3]_inst_i_2_n_0 ));
  OBUF \sum_OBUF[4]_inst 
       (.I(sum_OBUF[4]),
        .O(sum[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_OBUF[4]_inst_i_1 
       (.I0(\sum_OBUF[5]_inst_i_2_n_0 ),
        .I1(subtract_IBUF),
        .I2(b_IBUF[4]),
        .I3(a_IBUF[4]),
        .O(sum_OBUF[4]));
  OBUF \sum_OBUF[5]_inst 
       (.I(sum_OBUF[5]),
        .O(sum[5]));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \sum_OBUF[5]_inst_i_1 
       (.I0(\sum_OBUF[5]_inst_i_2_n_0 ),
        .I1(b_IBUF[4]),
        .I2(a_IBUF[4]),
        .I3(subtract_IBUF),
        .I4(b_IBUF[5]),
        .I5(a_IBUF[5]),
        .O(sum_OBUF[5]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \sum_OBUF[5]_inst_i_2 
       (.I0(a_IBUF[3]),
        .I1(b_IBUF[3]),
        .I2(subtract_IBUF),
        .I3(a_IBUF[2]),
        .I4(b_IBUF[2]),
        .I5(\sum_OBUF[3]_inst_i_2_n_0 ),
        .O(\sum_OBUF[5]_inst_i_2_n_0 ));
  OBUF \sum_OBUF[6]_inst 
       (.I(sum_OBUF[6]),
        .O(sum[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_OBUF[6]_inst_i_1 
       (.I0(\sum_OBUF[7]_inst_i_2_n_0 ),
        .I1(subtract_IBUF),
        .I2(b_IBUF[6]),
        .I3(a_IBUF[6]),
        .O(sum_OBUF[6]));
  OBUF \sum_OBUF[7]_inst 
       (.I(sum_OBUF[7]),
        .O(sum[7]));
  LUT6 #(
    .INIT(64'h4DE8B217B2174DE8)) 
    \sum_OBUF[7]_inst_i_1 
       (.I0(\sum_OBUF[7]_inst_i_2_n_0 ),
        .I1(b_IBUF[6]),
        .I2(a_IBUF[6]),
        .I3(subtract_IBUF),
        .I4(b_IBUF[7]),
        .I5(a_IBUF[7]),
        .O(sum_OBUF[7]));
  LUT6 #(
    .INIT(64'hBE2EBEB82E28B828)) 
    \sum_OBUF[7]_inst_i_2 
       (.I0(a_IBUF[5]),
        .I1(b_IBUF[5]),
        .I2(subtract_IBUF),
        .I3(a_IBUF[4]),
        .I4(b_IBUF[4]),
        .I5(\sum_OBUF[5]_inst_i_2_n_0 ),
        .O(\sum_OBUF[7]_inst_i_2_n_0 ));
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
