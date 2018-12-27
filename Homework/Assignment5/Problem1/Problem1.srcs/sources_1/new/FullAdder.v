`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2016 12:36:28 AM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input a,
    input b,
    input cIn,
    output cOut,
    output sum
    );
    wire wCar,wSum,wCar2;
    HalfAdder one(
    .a(a),
    .b(b),
    .sum(wSum),
    .carry(wCar)
    );
    HalfAdder two(
    .a(wSum),
    .b(cInIn),
    .sum(sum),
    .carry(wCar2)
    );
    assign cOut=wCar|wCar2;
endmodule
