`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2016 08:07:33 PM
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
        
    Problem1Mod UUT(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .x(x)
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
