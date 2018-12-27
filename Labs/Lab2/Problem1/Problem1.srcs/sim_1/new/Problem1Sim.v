`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2016 02:25:54 PM
// Design Name: 
// Module Name: Problem1Sim
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


module Problem1Sim();
    reg stomach;
    reg ear;
    reg head;
    reg leg;
    
    wire steal;
    
    reg [3:0] count;
    
    Problem1Mod UUT(
        .stomach(stomach),
        .ear(ear),
        .head(head),
        .leg(leg),
        .steal(steal)
    );
    initial begin
        
        for(count=0;count<=5'b01111;count=count+1)
        begin
            stomach=count[0];
            ear=count[1];
            head=count[2];
            leg=count[3];
            #10;
        end
    end
endmodule
