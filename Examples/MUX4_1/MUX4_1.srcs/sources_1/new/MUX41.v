`timescale 1ns / 1ps

module MUX41(
    input [3:0] i,
    input [1:0] s,
    output y
    );
    wire w1,w2;
    
    Mux21 PartA(
        .i(i[1:0]),
        .s(s[0]),
        .y(w1)
    );
    Mux21 PartB(
        .i(i[3:2]),
        .s(s[0]),
        .y(w2)
    );  
    Mux21 Partc(
        .i({w2,w1}),
        .s(s[1]),
        .y(y)
    );  
    
endmodule






