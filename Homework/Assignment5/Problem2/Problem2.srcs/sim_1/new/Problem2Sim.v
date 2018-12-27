`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2016 08:11:16 PM
// Design Name: 
// Module Name: Problem2Sim
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


module Problem2Sim();
    reg [3:0] a;
    reg [3:0] b;
    reg subtract;
    
    wire [4:0] sum;
    
    Problem2Mod UUT(
        .a(a),
        .b(b),
        .sum(sum),
        .subtract(subtract)
        
    );

    initial begin
        subtract=0;
        a=4'b0000;
        b=4'b0000;
        #10;
        
        a=4'b0111;
        b=4'b0001;
        #10;
        a=4'b0111;
        b=4'b0111;
        #10;
        
        a=4'b1000;
        b=4'b1000;
        #10;
        a=4'b1111;
        b=4'b1001;
        #10;
        
        a=4'b0000;
        b=4'b1000;
        #10;
        a=4'b1111;
        b=4'b0111;
        #10;
        
        subtract=1;
        a=4'b0000;
        b=4'b0000;
        #10;
        
        a=4'b0111;
        b=4'b0001;
        #10;
        a=4'b0111;
        b=4'b0111;
        #10;
        
        a=4'b1000;
        b=4'b1000;
        #10;
        a=4'b1111;
        b=4'b1001;
        #10;
        
        a=4'b0000;
        b=4'b1000;
        #10;
        a=4'b1111;
        b=4'b0111;
        #10;
        $stop;
    end
endmodule