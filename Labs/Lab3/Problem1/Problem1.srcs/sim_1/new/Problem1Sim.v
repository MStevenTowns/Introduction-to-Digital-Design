`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2016 03:02:38 PM
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
    reg a;
    reg b;
    reg c;
    
    wire y;
    
    Problem1Mod UUT(
        .a(a),
        .b(b),
        .c(c),
        .y(y)
    );
    initial begin
        a=0;
        b=1;
        c=1;
        #10;
        a=1;
        #10;
        a=0;
        #10;
        $stop;
    end
endmodule
