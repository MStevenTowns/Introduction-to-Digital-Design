`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2016 03:00:20 PM
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

//glitch when a goes from 1 to 0
//(negative glitch)
module Problem1Mod(
    input a,
    input b,
    input c,
    output y
    );
    wire g1, g2, g3;
    assign #1 g1=~a;
    assign #1 g2=g1&b;
    assign #1 g3=(a&c);
    assign #1 y=g2|g3;
endmodule
