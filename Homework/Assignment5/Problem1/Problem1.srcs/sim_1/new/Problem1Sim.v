`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2016 01:14:33 PM
// Design Name: 
// Module Name: Problem1Sim
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


module Problem1Sim();
    reg [3:0] a;
    reg [3:0] b;
    reg subtract;
    
    wire [3:0] sum;
    wire error;
    
    Problem1Mod UUT(
        .a(a),
        .b(b),
        .subtract(subtract),
        .sum(sum),
        .error(error)
    );

    initial begin
        subtract=0;
        a=4'b0000;
        b=4'b0000;
        #10;
        a=4'b0111;
        b=4'b0001;
        #10;
        a=4'b1111;
        b=4'b1001;
        #10;
        a=4'b1111;
        b=4'b1111;
        #10;

        subtract=1;
        a=4'b0000;
        b=4'b0000;
        #10;
        a=4'b0111;
        b=4'b0001;
        #10;
        a=4'b1111;
        b=4'b1001;
        #10;
        a=4'b1111;
        b=4'b1111;
        #10;
        a=4'b1000;
        b=4'b0001;
        #10;
        $stop;
    end
endmodule
