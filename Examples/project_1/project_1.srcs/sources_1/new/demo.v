`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2015 01:15:12 PM
// Design Name: 
// Module Name: demo
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

//sythesize
//implement
//generate board file

//open sythesized design to see circuit created
/*
~       NOT
&       AND
|       OR
^       XOR
*/
module demo(
    input a,
    input b,
    input c,
    output x,
    output y
    );

    assign X=~a&c|a&~~b&~d^a&c&d^a&~b|b&d;
    assign Y=c&d|a&b^a&~c|~a&~b;

endmodule
