`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2016 11:37:21 PM
// Design Name: 
// Module Name: Problem6Mod
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Problem6Mod(
    input j,
    input clk,
    input k,
    input arst,
    input srst,
    output reg q
    );
    always @(arst)
    begin
        q=0;
    end
    always @(posedge clk)
    begin
        if(arst||srst)
        begin
            q=0;
        end
        else
        begin
            case({j,k})
                0:q=q;
                1:q=0;
                2:q=1;
                3:q=~q;      
            endcase
        end
    end
endmodule
