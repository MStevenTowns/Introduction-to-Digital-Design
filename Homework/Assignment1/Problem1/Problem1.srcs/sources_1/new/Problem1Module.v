`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2015 02:53:27 PM
// Design Name: 
// Module Name: Problem1Module
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
/*
~ 	NOT
&	AND
| 	OR
^	XOR
*/

module Problem1Module(
    input a,
    input b,
    input c,
    input d,
    output x,
    output y
    );
    
    assign x = ~a & c | a & ~b & ~d ^ a & c & d ^ a & ~b | b & d;
    assign y = c & d | a & b ^ a & ~c | ~a & ~b;
endmodule
