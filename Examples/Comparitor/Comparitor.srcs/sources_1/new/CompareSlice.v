`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2016 02:29:39 PM
// Design Name: 
// Module Name: CompareSlice
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


module CompareSlice(
    input a,
    input b,
    input gtIn,
    input ltIn,
    input eqIn,
    output reg gtOut,
    output reg ltOut,
    output reg eqOut
    );
    always @(a or b or gtIn or ltIn or eqIn)
    begin
        if(a>b)
        begin
            gtOut=1;
            ltOut=0;
            eqOut=0;
        end
        else if(a<b)
        begin
            gtOut=0;
            ltOut=1;
            eqOut=0;
        end
        else
        begin
            gtOut=gtIn;
            ltOut=ltIn;
            eqOut=eqIn;
        end
        
    end
endmodule
