`timescale 1ns / 1ps

module Problem2Mod(
    input r,
    input s,
    output q,
    output qn
    );
    
    assign #1 q=~(r|qn);
    assign #1 qn=~(q|s);
endmodule
