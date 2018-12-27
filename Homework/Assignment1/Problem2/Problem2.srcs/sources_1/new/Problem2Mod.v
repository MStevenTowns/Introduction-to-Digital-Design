`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2015 03:39:48 PM
// Design Name: 
// Module Name: Problem2Mod
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


module Problem2Mod(
    input a,
    input b,
    input c,
    output x
    );
    assign x = (~( a | b )) & (~a | ~b | ~c) & (~c | a);
    
endmodule
