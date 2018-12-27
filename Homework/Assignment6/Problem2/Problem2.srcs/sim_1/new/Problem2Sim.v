`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 03:20:34 PM
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
    reg a, b, c;
    wire y;
    
    Problem2Mod UUT(
        .a(a),
        .b(b),
        .c(c),
        .y(y)
    );
    initial begin
        a=0;
        b=0;
        c=0;
        #10;
        
        a=1;
        #10;
        a=0;
        #10;
        $stop;
    end
endmodule
