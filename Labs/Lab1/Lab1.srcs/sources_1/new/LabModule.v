`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2015 02:05:20 PM
// Design Name: 
// Module Name: LabModue
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
~       NOT
&       AND
|       OR
^       XOR
a=0
*/

module Lab1Module(
    input a,
    input b,
    input c,
    input d,
    output x,
    output y,
    output z
    );
    
    assign x = ( ~a & b & c ) | ~( a & c ) | ( a & ~d );
    assign y= ~( ( a & ~d ) | ~( c & b ) );
    assign z= ~( c & b ) | ( ~c & b & d );
    
endmodule
