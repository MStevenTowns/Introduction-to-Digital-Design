`timescale 1ns / 1ps

module Mux21(
    input [1:0] i,
    input s,
    output reg y
    );
    
    always @(i or s)
    begin
        y=i[s]; //probably wont work, but maybe?
        /*case(s)
            1'b0: y=i[0];
            1'b1: y=i[1];
        endcase*/
    end
    
endmodule
