`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 02:43:06 PM
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
    output y
    );
    wire n1,or1,or2;
    
    assign #1 n1 = ~a;
    assign #1 or1 = n1&b;
    assign #1 or2 = a&c;
    assign #1 y = or1|or2;
    
endmodule
