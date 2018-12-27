`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2016 03:07:10 PM
// Design Name: 
// Module Name: BinCountSim
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


module BinCountSim();
    reg cen, reset, clk;
    wire[3:0] count;
    wire tc;
    
    BinCount UUT(
    .cen(cen),
    .reset(reset),
    .clk(clk),
    .count(count),
    .tc(tc)
    );
    
    always begin
        clk=~clk;
        #10;
    end
    
    initial begin
        clk=0;
        reset=0;
        cen=0;
        #30;
        
        cen=1;
        #50;
        
        reset=1;
        #20;
        reset=0;
        
    end
endmodule
