`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2016 10:02:21 PM
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

    reg a;
    reg b;
    reg c;
    reg d;
    
    wire f;
    wire g;
    wire h;
    
    reg [4:0] count;
    
    Problem4Mod UUT(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .f(f),
        .g(g),
        .h(h)
    );
    initial begin
        
        for(count=0;count<=5'b01111;count=count+1)
        begin
            a=count[3];
            b=count[2];
            c=count[1];
            d=count[0];
            #10;
        end
        $stop;
    end
endmodule
