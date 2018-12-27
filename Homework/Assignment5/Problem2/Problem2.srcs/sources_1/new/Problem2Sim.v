`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2016 04:28:33 PM
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
        .subtract(subtract),
        .sum(sum)
    );

    initial begin
        a=7;
        b=7;
        subtract=1;
        #10;
        
        a=0;
        b=0;
        #10;
        
        $stop;
    end
endmodule
