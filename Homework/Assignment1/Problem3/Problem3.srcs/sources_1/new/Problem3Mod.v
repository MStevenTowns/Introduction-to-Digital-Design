`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2015 06:02:09 PM
// Design Name: 
// Module Name: Problem3Mod
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


module Problem3Mod(
    input a,
    input b,
    input c,
    output x,
    output y
    );
    
    assign x = ( a | ~b | c ) & ( ~a | b | c ) & ( ~a | ~b | ~c );
    assign y = ( a | b | c ) & ( a | ~b | c ) & ( a | ~b | ~c ) & ( ~a | b | ~c);    
endmodule
