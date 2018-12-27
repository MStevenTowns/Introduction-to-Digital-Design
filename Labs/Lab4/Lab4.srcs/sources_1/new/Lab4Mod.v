`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2016 03:22:03 PM
// Design Name: 
// Module Name: Lab4Mod
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


module Lab4Mod(
    input clk,
    output reg led
    );
    reg [32:0] count;
    initial begin
        count=0;
    end
    
    always @(posedge clk)
    begin
        count=count+1;
        if(count==100000000/2)
        begin
            led=~led;
            count=0;
        end
    end
    //100,000,000
endmodule
