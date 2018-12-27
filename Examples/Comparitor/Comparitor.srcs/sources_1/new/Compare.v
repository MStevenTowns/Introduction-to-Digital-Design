`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2016 02:27:11 PM
// Design Name: 
// Module Name: Compare
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Compare(
    input [7:0] a,
    input [7:0] b,
    output lt,
    output gt,
    output eq
    );
    wire g1, l1, e1;
    wire g2, l2, e2;
    wire g3, l3, e3;
    wire g4, l4, e4;
    wire g5, l5, e5;
    wire g6, l6, e6;
    wire g7, l7, e7;
    
    CompareSlice Bit0(
    .a(a[0]),
    .b(b[0]),
    .gtIn(0),
    .ltIn(0),
    .eqIn(1),
    .gtOut(g1),
    .ltOut(l1),
    .eqOut(e1)
    );
    
    CompareSlice Bit1(
    .a(a[1]),
    .b(b[1]),
    .gtIn(g1),
    .ltIn(l1),
    .eqIn(e1),
    .gtOut(g2),
    .ltOut(l2),
    .eqOut(e2)
    );
    CompareSlice Bit2(
    .a(a[2]),
    .b(b[2]),
    .gtIn(g2),
    .ltIn(l2),
    .eqIn(e2),
    .gtOut(g3),
    .ltOut(l3),
    .eqOut(e3)
    );
    CompareSlice Bit3(
    .a(a[3]),
    .b(b[3]),
    .gtIn(g3),
    .ltIn(l3),
    .eqIn(e3),
    .gtOut(g4),
    .ltOut(l4),
    .eqOut(e4)
    );
    CompareSlice Bit4(
    .a(a[4]),
    .b(b[4]),
    .gtIn(g4),
    .ltIn(l4),
    .eqIn(e4),
    .gtOut(g5),
    .ltOut(l5),
    .eqOut(e5)
    );
    CompareSlice Bit5(
    .a(a[5]),
    .b(b[5]),
    .gtIn(g5),
    .ltIn(l5),
    .eqIn(e5),
    .gtOut(g6),
    .ltOut(l6),
    .eqOut(e6)
    );
                
    CompareSlice Bit6(
    .a(a[6]),
    .b(b[6]),
    .gtIn(g6),
    .ltIn(l6),
    .eqIn(e6),
    .gtOut(g7),
    .ltOut(l7),
    .eqOut(e7)
    );
    CompareSlice Bit7(
    .a(a[7]),
    .b(b[7]),
    .gtIn(g7),
    .ltIn(l7),
    .eqIn(e7),
    .gtOut(gt),
    .ltOut(lt),
    .eqOut(eq)
    );
    
    
    
    
endmodule
