`timescale 1ns / 1ps

module bitCompareMod(
    input a,
    input b,
    input [2:0] iState,
    output reg [2:0] oState
    );
    always @(a or b or iState)
    begin
        if (a==b) oState=iState;
        else if (a>b) oState=1;
        else oState=2;
    end
endmodule
