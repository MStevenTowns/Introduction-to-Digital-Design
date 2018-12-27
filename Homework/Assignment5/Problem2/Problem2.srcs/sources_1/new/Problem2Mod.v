`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2016 04:21:02 PM
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


module Problem2Mod(
    input [3:0] a,
    input [3:0] b,
    output [4:0] sum,
    input subtract
    );
    wire w0,w1,w2,w3;
    
    BitSlice zero(
    .a(a[0]),
    .b(b[0]^subtract),
    .cIn(subtract),
    .cOut(w0),
    .sum(sum[0])
    );
    BitSlice one(
    .a(a[1]),
    .b(b[1]^subtract),
    .cIn(w0),
    .cOut(w1),
    .sum(sum[1])
    );
    BitSlice two(
    .a(a[2]),
    .b(b[2]^subtract),
    .cIn(w1),
    .cOut(w2),
    .sum(sum[2])
    );
    BitSlice three(
    .a(a[3]),
    .b(b[3]^subtract),
    .cIn(w2),
    .cOut(w3), 
    .sum(sum[3])
    );
    assign sum[4]=(w3&a[3]&(b[3]^subtract));
endmodule
