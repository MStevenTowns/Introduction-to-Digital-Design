`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2016 03:03:39 PM
// Design Name: 
// Module Name: BinCount
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


module BinCount(
    input clk,
    input cen,
    input reset,
    output reg [3:0] count,
    output reg tc
    );
    
    initial begin
    count=4'b0000;
    tc=1'b0;
    end
    
    always @(posedge clk)
    begin
        if (reset==1)
            count=4'b0000;
        else if (cen==1)
            count=count+1;
        if(count==4'b1111)
            tc=1'b1;
        else
            tc=1'b0;
    end
endmodule
