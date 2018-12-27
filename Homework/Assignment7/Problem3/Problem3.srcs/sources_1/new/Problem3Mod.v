`timescale 1ns / 1ps

module Problem3Mod(
    input r,
    input s,
    output q,
    output qn
    );
    
    assign #1 qn=~(r&q);
    assign #1 q=~(s&qn);

endmodule
