`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2016 06:53:01 PM
// Design Name: 
// Module Name: Problem3Sim
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


module Problem3Sim();
    reg [3:0] a;
    reg [3:0] b;
    reg subtract;
    wire [3:0] sum;
    wire error;
    
    Problem3Mod UUT(
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
        a=4'b0000;
        b=4'b1010;
        #10;
        a=4'b1010;
        b=4'b0000;
        #10;
        a=4'b1010;
        b=4'b1010;
        #10;        
        a=4'b0001;
        b=4'b1111;
        #10;
        a=4'b1111;
        b=4'b0001;
        #10;
        a=4'b1111;
        b=4'b1111;
        #10;
        a=4'b0111;
        b=4'b0111;
        #10;
        subtract=1;
        a=4'b0000;
        b=4'b0000;
        #10;
        a=4'b0000;
        b=4'b1010;
        #10;
        a=4'b1010;
        b=4'b0000;
        #10;
        a=4'b1010;
        b=4'b1010;
        #10;        
        a=4'b0001;
        b=4'b1111;
        #10;
        a=4'b1111;
        b=4'b0001;
        #10;
        a=4'b1111;
        b=4'b1111;
        #10;
        a=4'b0111;
        b=4'b0111;
        #10;
        $stop;
    end

endmodule
