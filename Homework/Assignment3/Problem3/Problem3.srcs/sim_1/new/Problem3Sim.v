`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2016 09:26:44 PM
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
    reg a;
    reg b;
    reg c;
    reg d;
    reg e;
    reg f;
    
    wire pass;
    wire fail;
    
    reg [6:0] count;
    
    Problem3Mod UUT(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .pass(pass),
        .fail(fail)
    );
    initial begin
        
        for(count=0;count<=7'b0111111;count=count+1)
        begin
            a=count[5];
            b=count[4];
            c=count[3];
            d=count[2];
            e=count[1];
            f=count[0];
            #10;
        end
        $stop;
    end

endmodule
