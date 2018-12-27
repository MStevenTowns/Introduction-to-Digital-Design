`timescale 1ns / 1ps

module Problem1Mod(
    input s,
    input r,
    output q,
    output nq
    );

    assign #1 nq=~(r&q);
    assign #1 q=~(s&nq);
    
endmodule
