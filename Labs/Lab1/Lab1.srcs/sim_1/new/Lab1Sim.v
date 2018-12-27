`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2015 02:19:00 PM
// Design Name: 
// Module Name: Lab1Sim
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


module Lab1Sim();

reg a;
reg b;
reg c;
reg d;

wire x;
wire y;
wire z;

Lab1Module UUT(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .x(x),
    .y(y),
    .z(z)
    );

    initial begin
        a=0;
        b=0;
        c=0;
        d=0;
        #10;
        
        a=0;
        b=0;
        c=0;
        d=1;
        #10;
        
        a=0;
        b=0;
        c=1;
        d=0;
        #10;
        
        a=0;
        b=0;
        c=1;
        d=1;
        #10;
        
        a=0;
        b=1;
        c=0;
        d=0;
        #10;
        
        a=0;
        b=1;
        c=0;
        d=1;
        #10;
        
        a=0;
        b=1;
        c=1;
        d=0;
        #10;
        
        a=0;
        b=1;
        c=1;
        d=1;
        #10;
        
        a=1;
        b=0;
        c=0;
        d=0;
        #10;
        
        a=1;
        b=0;
        c=0;
        d=1;
        #10;
        
        a=1;
        b=0;
        c=1;
        d=0;
        #10;
        
        a=1;
        b=0;
        c=1;
        d=1;
        #10;
        
        a=1;
        b=1;
        c=0;
        d=0;
        #10;
        
        a=1;
        b=1;
        c=0;
        d=1;
        #10;
        
        a=1;
        b=1;
        c=1;
        d=0;
        #10;
        
        a=1;
        b=1;
        c=1;
        d=1;
    end 

endmodule
