`timescale 1ns / 1ps

module Problem4Mod(
    input clk,
    input t,
    input rst,
    output reg q
    );
    
    always @(rst)
    begin
        q=0;
    end
    
    always @(posedge clk)
    begin
        if (rst)
        begin
            q=0;
        end
        
        else
        begin
            if(t) q=~q;
        end
    end
    
endmodule
