`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2016 11:02:36 PM
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
    output sop,
    output pos
    );
    
    assign sop = ( ~e & ~a & ~b ) | ( e & c & d ) | ( b & c & d ) |
                 ( e & a & ~b & ~d) | ( ~e & a & ~b & ~c );
    assign pos = ( ~b | c ) & ( ~b | ~c | d ) & ( ~e | c | ~d ) & ( e | ~a | b| ~c ); 
endmodule
