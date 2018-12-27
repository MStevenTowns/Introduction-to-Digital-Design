`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2016 09:21:17 PM
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
    input e,
    input f,
    output x,
    output y
    );
    
    assign x = ( a & b & c & ( d | e | f ) ) | ( (e|f) & (a|b) & c & d ) | 
               ( (e|f) & a & b & (c|d) ) | ( e & f & a & (b|c|d) ) | 
               ( e & f & c & (a|b|d) ) | ( e & f & b & (a|c|d) );  
                                 
    assign y = ~x;
endmodule
