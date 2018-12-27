`timescale 1ns / 1ps

module BitSlice(
    input a,
    input b,
    input cIn,
    output sum,
    output cOut
    );
    
    assign sum=((a^b)^cIn);
    assign cOut=(((a^b)&cIn)|(a&b));    
    
endmodule


//add carry out to msb of inputs