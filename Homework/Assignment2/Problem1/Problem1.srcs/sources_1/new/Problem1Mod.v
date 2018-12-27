`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2016 08:04:52 PM
// Design Name: 
// Module Name: Problem1Mod
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


module Problem1Mod(
    input a,
    input b,
    input c,
    input d,
    output x
    );
    assign x = ( ~b & c ) | ( ~a & d ) | ( ~a & b & ~c ) | ( a & ~b ) | ( a & c & ~d);
    
endmodule
