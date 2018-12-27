`timescale 1ns / 1ps

module BitAdder(
    input a,
    input b,
    input cIn,
    output sum
    );
    assign sum=(a^b)^cIn;
endmodule
