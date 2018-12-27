`timescale 1ns / 1ps

//y=(!a&b)|(a&c)

module Problem2Mod(
    input a,
    input b,
    input c,
    output y
    );
    
    wire notGate, orGate1, orGate2;
    
    assign #1 notGate = ~a;
    assign #1 orGate1 = notGate|b;
    assign #1 orGate2 = a|c;
    assign #1 y = orGate1 & orGate2;
    
endmodule
