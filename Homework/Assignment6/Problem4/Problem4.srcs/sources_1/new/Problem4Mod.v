`timescale 1ns / 1ps

// 107/256

module Problem4Mod(
    input [3:0] a,
    input [3:0] b,
    output [7:0] result
    );
    
    wire [3:0] p0;
    wire [3:0] p1;
    wire [3:0] p2;
    wire [3:0] p3;
    
    assign p0[0]=b[0]&a[0];
    assign p0[1]=b[0]&a[1];
    assign p0[2]=b[0]&a[2];
    assign p0[3]=b[0]&a[3];
    
    assign p1[0]=b[1]&a[0];
    assign p1[1]=b[1]&a[1];
    assign p1[2]=b[1]&a[2];
    assign p1[3]=b[1]&a[3];
    
    assign p2[0]=b[2]&a[0];
    assign p2[1]=b[2]&a[1];
    assign p2[2]=b[2]&a[2];
    assign p2[3]=b[2]&a[3];
    
    assign p3[0]=b[3]&a[0];
    assign p3[1]=b[3]&a[1];
    assign p3[2]=b[3]&a[2];
    assign p3[3]=b[3]&a[3];
    
    assign result[0]=p0[0];
    
    wire [3:0] w0;
    wire [3:0] w1;
    wire [3:0] w2;
    
    wire c0, c1, c2;
    RCA4Bit row0(
        .a({0,p0[3:1]}),
        .b(p1),
        .sum(w0),
        .cOut(c0)
    );
    assign result[1]=w0[0];
    RCA4Bit row1(
        .a({c0,w0[3:1]}),
        .b(p2),
        .sum(w1),
        .cOut(c1)
    );
    assign result[2]=w1[0];
    RCA4Bit row2(
        .a({c1,w1[3:1]}),
        .b(p2),
        .sum(w2),
        .cOut(c2)
    );
    assign result[3]=w2[0];
    assign result[4]=w2[1];
    assign result[5]=w2[2];
    assign result[6]=w2[3];
    assign result[7]=c2;
    
endmodule
