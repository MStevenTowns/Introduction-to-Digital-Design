`timescale 1ns / 1ps

module RCA4Bit(
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum,
    output cOut
    );
    wire w0,w1,w2;
    BitSlice zero(
    .a(a[0]),
    .b(b[0]),
    .cIn(0),
    .cOut(w0),
    .sum(sum[0])
    );
    BitSlice one(
    .a(a[1]),
    .b(b[1]),
    .cIn(w0),
    .cOut(w1),
    .sum(sum[1])
    );
    BitSlice two(
    .a(a[2]),
    .b(b[2]),
    .cIn(w1),
    .cOut(w2),
    .sum(sum[2])
    );
    BitSlice three(
    .a(a[3]),
    .b(b[3]),
    .cIn(w2),
    .cOut(w3), 
    .sum(sum[3])
    );
    assign cOut=w3&a[3]&b[3];
endmodule
