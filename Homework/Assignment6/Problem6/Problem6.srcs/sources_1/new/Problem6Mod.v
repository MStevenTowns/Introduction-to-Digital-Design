`timescale 1ns / 1ps

module Problem6Mod(
    input [7:0] a,
    input [7:0] b,
    input subtract,
    output [7:0] sum,
    output error
    );
    
    wire w0,w1,w2,w3,w4,w5,w6,w7;
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
        BitSlice four(
        .a(a[4]),
        .b(b[4]^subtract),
        .cIn(w3),
        .cOut(w4),
        .sum(sum[4])
        );
        BitSlice five(
        .a(a[5]),
        .b(b[5]^subtract),
        .cIn(w4),
        .cOut(w5),
        .sum(sum[5])
        );
        BitSlice six(
        .a(a[6]),
        .b(b[6]^subtract),
        .cIn(w5),
        .cOut(w6),
        .sum(sum[6])
        );
        BitSlice seven(
        .a(a[7]),
        .b(b[7]^subtract),
        .cIn(w6),
        .cOut(w7), 
        .sum(sum[7])
        );
        assign error=(a[7]&(b[7]^subtract)&~sum[7])|(~a[7]&(~b[7]^subtract)&sum[7]);

    
endmodule
