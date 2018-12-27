`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2016 09:50:43 PM
// Design Name: 
// Module Name: Problem4Mod
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


module Problem4Mod(
    input a,
    input b,
    input c,
    input d,
    output reg f,
    output reg g,
    output reg h
    );
    always @(a or b or c or d)
    begin
        case({a,b,c,d})
            4'b0000:
            begin
                f=1;
                g=0;
                h=1;
            end
            4'b0001:
            begin
                f=0;
                g=1;
                h=0;
            end
            4'b0010:
            begin
                f=1;
                g=0;
                h=0;
            end
            4'b0011:
            begin
                f=0;
                g=0;
                h=1;
            end
            4'b0100:
            begin
                f=0;
                g=1;
                h=1;
            end
            4'b0101:
            begin
                f=1;
                g=1;
                h=0;
            end
            4'b0110:
            begin
                f=0;
                g=0;
                h=0;
            end            
            4'b0111:
            begin
                f=1;
                g=0;
                h=1;
            end            
            4'b1000:
            begin
                f=1;
                g=1;
                h=0;
            end            
            4'b1001:
            begin
                f=0;
                g=0;
                h=1;
            end            
            4'b1010:
            begin
                f=1;
                g=0;
                h=0;
            end            
            4'b1011:
            begin
                f=1;
                g=1;
                h=1;
            end            
            4'b1100:
            begin
                f=0;
                g=0;
                h=0;
            end            
            4'b1101:
            begin
                f=0;
                g=1;
                h=1;
            end            
            4'b1110:
            begin
                f=1;
                g=1;
                h=1;
            end            
            4'b1111:
            begin
                f=0;
                g=1;
                h=0;
            end            
                                                            
            
            
            
            
            
        endcase
    end
endmodule
