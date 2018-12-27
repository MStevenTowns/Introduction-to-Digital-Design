`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2016 11:28:11 PM
// Design Name: 
// Module Name: Problem4Sim
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


module Problem4Sim();

reg [3:0] a;
reg [3:0] b;
wire [7:0] result;

Problem4Mod UUT(
    .a(a),
    .b(b),
    .result(result)
);

initial begin
    a=0;
    b=0;
    #10;
    a=10;
    b=0;
    #10;
    a=0;
    b=10;
    #10;
    a=2;
    b=2;
    #10;
    a=4;
    b=2;
    #10;
    a=1;
    b=1;
    #10;
    a=1;
    b=2;
    #10;
    a=2;
    b=1;
    #10;
    $stop;



end
endmodule
