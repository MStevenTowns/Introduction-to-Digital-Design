`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2016 02:19:58 PM
// Design Name: 
// Module Name: Problem1Mod
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


module Problem1Mod(
    input stomach,
    input ear,
    input head,
    input leg,
    output reg steal
    );
    
    always @(stomach or ear or head or leg)
    begin
        if ( stomach && leg && ~ear )
        begin
            steal=1;
        end
        else if( head && stomach && !leg)
        begin
            steal=1;
        end
        else if ( head && ear)
        begin
            steal=1;
        end
        else steal=0;
    end
endmodule
