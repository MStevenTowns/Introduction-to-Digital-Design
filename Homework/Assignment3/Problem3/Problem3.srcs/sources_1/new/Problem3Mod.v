`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2016 09:23:39 PM
// Design Name: 
// Module Name: Problem3Mod
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


module Problem3Mod(
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,
    output reg pass,
    output reg fail
    );
    always @(a or b or c or d or e or f)
    begin
        if( (a+b+c+d+e+f) >= 4 )
            pass=1;
        else
            pass=0;
            
        fail=!pass;
     end
endmodule
