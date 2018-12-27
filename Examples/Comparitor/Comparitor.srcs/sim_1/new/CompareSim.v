`timescale 1ns / 1ps

// Company: 
// Engineer: 
// 
// Create Date: 01/28/2016 02:43:26 PM
// Design Name: 
// Module Name: CompareSim
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


module CompareSim();

reg [7:0] a;
reg [7:0] b;

wire lt, gt, eq;

Compare UUT(
    .a(a),
    .b(b),
    .lt(lt),
    .gt(gt),
    .eq(eq)
);

initial
begin
    a=8'b10101010;
    b=8'b01010101;
    #10;
    a=8'b10000000;
    b=8'b01111111;
    #10;
    a=8'b01010101;
    b=8'b01010101;
    #10;
    b=8'b10101010;
    a=8'b01010101;
    #10;
    b=8'b10000000;
    a=8'b01111111;
    #10;
    $stop;
end

endmodule
