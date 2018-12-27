`timescale 1ns / 1ps

module DFlipFlop(
    input d,
    input clk,
    input rst,//not used, this is for a generic flip flop
    output reg q
    );
    
    always @(posedge clk)
    begin
        if(rst)
        begin
            q=0;
        end
        else
        begin
            q=d;
        end
    end
    
endmodule
