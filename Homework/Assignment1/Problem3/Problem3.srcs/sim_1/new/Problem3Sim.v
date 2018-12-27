`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2015 06:06:54 PM
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
    
    wire x;
        
    Problem3Mod UUT(
        .a(a),
        .b(b),
        .c(c),
        .x(x),
        .y(y)
    );
    
    initial begin
        a=0;
        b=0;
        c=0;
        #10;
        
        a=0;
        b=0;
        c=1;
        #10;
          
        a=0;
        b=1;
        c=0;
        #10;
        
        a=0;
        b=1;
        c=1;
        #10;
      
        a=1;
        b=0;
        c=0;
        #10;
        
        a=1;
        b=0;
        c=1;
        #10;
        
        a=1;
        b=1;
        c=0;
        #10;
        
        a=1;
        b=1;
        c=1;
        
    end


endmodule
