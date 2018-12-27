`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2016 10:11:21 PM
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
    reg d;
    
    wire x;
    wire y;
    
    reg [4:0] count;
    
    Problem1Mod UUT(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .x(x),
        .y(y)
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
        $finish;
    end

endmodule
