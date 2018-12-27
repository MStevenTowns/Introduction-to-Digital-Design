`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2016 05:33:16 PM
// Design Name: 
// Module Name: BitSlice
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


module BitSlice(
    input a,
    input b,
    output p,
    output g
    );
    assign p=a^b;
    assign g=a&b;
    
endmodule
