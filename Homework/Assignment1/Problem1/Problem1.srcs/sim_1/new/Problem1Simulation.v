`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2015 03:00:13 PM
// Design Name: 
// Module Name: Problem1Simulation
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


module Problem1Simulation();
    reg a;
    reg b;
    reg c;
    reg d;
    
    wire x;
    wire y;
        
    Problem1Module UUT(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .x(x),
        .y(y)
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
