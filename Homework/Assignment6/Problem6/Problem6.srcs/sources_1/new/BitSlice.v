`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 05:21:52 PM
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
    input cIn,
    output sum,
    output cOut
    );
    
    assign sum=(a^b)^cIn;
    assign cOut=((a^b)&cIn)|(a&b);
endmodule
