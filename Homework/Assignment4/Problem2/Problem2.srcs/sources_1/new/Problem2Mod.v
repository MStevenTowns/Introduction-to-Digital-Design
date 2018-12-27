`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2016 04:14:42 PM
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
    input [7:0] i,
    output reg [2:0] y,
    input eIn,
    output reg eOut,
    input gSig
    );
    always @(i, eIn, gSig)
    begin
        if (eIn)
        begin
            case(i)
                8'b00000001:
                begin
                    y[2]=0;
                    y[1]=0;
                    y[0]=0;
                    eOut=1;
                    gSig=0;
                end
                8'b00000010:
                begin
                    y[2]=0;
                    y[1]=0;
                    y[0]=1;
                    eOut=0;
                    gSig=1;
                end            
                8'b00000100:
                begin
                    y[2]=0;
                    y[1]=1;
                    y[0]=0;
                    eOut=0;
                    gSig=1;
                end
                8'b00001000:
                begin
                    y[2]=0;
                    y[1]=1;
                    y[0]=1;
                    eOut=0;
                    gSig=1;
                end
                8'b00010000:
                begin
                    y[2]=1;
                    y[1]=0;
                    y[0]=0;
                    eOut=0;
                    gSig=1;
                end
                8'b00100000:
                begin
                    y[2]=1;
                    y[1]=0;
                    y[0]=1;
                    eOut=0;
                    gSig=1;
                end
                8'b01000000:
                begin
                    y[2]=1;
                    y[1]=1;
                    y[0]=0;
                    eOut=0;
                    gSig=1;
                end
                8'b10000000:
                begin
                    y[2]=1;
                    y[1]=1;
                    y[0]=1;
                    eOut=0;
                    gSig=1;
                end
            endcase
        end
        else
        begin
            y[2]=0;
            y[1]=0;
            y[0]=0;
            eOut=0;
            gSig=0;
        end
        if(y[2])
        begin
            y[1]=0;
            y[0]=0;
        end
        else if(y[1]) y[0]=0;
    end
endmodule
