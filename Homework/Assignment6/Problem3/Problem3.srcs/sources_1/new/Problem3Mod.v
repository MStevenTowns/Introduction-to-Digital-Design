`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 03:54:32 PM
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
    input [3:0] a,
    input [3:0] b,
    input subtract,
    output [3:0] sum,
    output error
    );
    wire [3:0] p;
    wire [3:0] g;
    wire [3:0] c;
    wire cOut;
    
    CarryBits getBits(
    .a(a),
    .b(b),
    .subtract(subtract),
    .c(c),
    .cOut(cOut)
    );
    
    BitAdder zero(
    .a(a[0]),
    .b(b[0]^subtract),
    .cIn(subtract),
    .sum(sum[0])
    );
    BitAdder one(
    .a(a[1]),
    .b(b[1]^subtract),
    .cIn(c[1]),
    .sum(sum[1])
    );
    BitAdder two(
    .a(a[2]),
    .b(b[2]^subtract),
    .cIn(c[2]),
    .sum(sum[2])
    );
    BitAdder three(
    .a(a[3]),
    .b(b[3]^subtract),
    .cIn(c[3]),
    .sum(sum[3])
    );
    assign error=(a[3]&(b[3]^subtract)&~sum[3])|(~a[3]&(~b[3]^subtract)&sum[3]);
    
endmodule
