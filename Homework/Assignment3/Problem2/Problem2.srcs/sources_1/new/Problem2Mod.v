`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2016 08:59:04 PM
// Design Name: 
// Module Name: Problem2Mod
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


module Problem2Mod(
    input a,
    input b,
    input c,
    input d,
    output reg buy
    );
    always @(a or b or c or d)
        case({a,b,c,d})
            4'b0100:buy=1;
            4'b0011:buy=1;
            4'b1001:buy=1;
            4'b1110:buy=1;
            4'b0010:buy=1;
            4'b0011:buy=1;
            4'b1011:buy=1;
            4'b0111:buy=1;
            4'b1010:buy=1;
            4'b0010:buy=1;
            4'b1111:buy=1;
            default:buy=0;
        endcase
endmodule
