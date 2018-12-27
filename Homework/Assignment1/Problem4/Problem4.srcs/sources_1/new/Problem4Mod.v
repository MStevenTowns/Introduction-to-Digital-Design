`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2015 09:05:10 PM
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
    input e,
    output x
    );
    assign x=( ~a & ~b & ~c &  d & ~e )|( ~a & ~b & ~c &  d &  e )|( ~a & ~b &  c & ~d &  e )|( ~a & ~b &  c &  d &  e )|( ~a &  b & ~c &  d &  e )|( ~a &  b &  c & ~d &  e )|(  a & ~b & ~c & ~d &  e )|(  a & ~b & ~c &  d &  e )|(  a & ~b &  c &  d &  e )|(  a &  b &  c & ~d &  e )|(  a &  b &  c &  d &  e );
endmodule
