`timescale 1ns / 1ps

module Problem4Mod(
    input [7:0] a,
    input [7:0] b,
    output reg [2:0] oState
    );
    reg count;
    always @(a or b or iState)
    oState=4;
    begin
        for(count=0;count<=4'b0100;count=count+1)
        begin
            bitCompareMod(
            .a(a[count]),
            .b(b[count]),
            .iState(oState),
            .oState(oState)
            );
        end
    end
endmodule
