`timescale 1ns / 1ps

module CarryBits(
    input [3:0] a,
    input [3:0] b,
    input subtract,
    output [3:0] c,
    output cOut
    );
    wire [3:0] p;
    wire [3:0] g;
    
    BitSlice zero(
    .a(a[0]),
    .b(b[0]^subtract),
    .p(p[0]),
    .g(g[0])
    );
    BitSlice one(
    .a(a[1]),
    .b(b[1]^subtract),
    .p(p[1]),
    .g(g[1])
    );
    BitSlice two(
    .a(a[2]),
    .b(b[2]^subtract),
    .p(p[2]),
    .g(g[2])
    );
    BitSlice three(
    .a(a[3]),
    .b(b[3]^subtract),
    .p(p[3]),
    .g(g[3])
    );
    
    assign c[0]=subtract;
    /*
    assign c[1]=g[0]|p[0]&c[0];
    assign c[2]=g[1]|p[1]&c[1];
    assign c[3]=g[2]|p[2]&c[2];
    assign cOut=g[3]|p[3]&c[3];
    */
    assign c[1]=g[0]|p[0]&(subtract);
    assign c[2]=g[1]|p[1]&(g[0]|p[0]&(subtract));
    assign c[3]=g[2]|p[2]&(g[1]|p[1]&(g[0]|p[0]&(subtract)));
    assign cOut=g[3]|p[3]&(g[2]|p[2]&(g[1]|p[1]&(g[0]|p[0]&(subtract))));
    
endmodule