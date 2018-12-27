`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2016 09:07:35 PM
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

    reg a;
    reg b;
    reg c;
    reg d;
    
    wire buy;
    
    reg [3:0] count;
    
    Problem2Mod UUT(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .buy(buy)
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
    end

endmodule
