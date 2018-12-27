`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2015 09:39:20 PM
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
    reg e;
    
    wire x;
        
    Problem4Mod UUT(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .x(x)
    );
    
    initial begin
        a=0;
        b=0;
        c=0;
        d=0;
        e=0;
        #10;
        
        a=0;
        b=0;
        c=0;
        d=0;
        e=1;
        #10;  
        
        a=0;
        b=0;
        c=0;
        d=1;
        e=0;
        #10;      
        
        a=0;
        b=0;
        c=0;
        d=1;
        e=1;
        #10;    
        
        a=0;
        b=0;
        c=1;
        d=0;
        e=0;
        #10;
        
        a=0;
        b=0;
        c=1;
        d=0;
        e=1;
        #10;
        
        a=0;
        b=0;
        c=1;
        d=1;
        e=0;
        #10;
        
        a=0;
        b=0;
        c=1;
        d=1;
        e=1;
        #10;
        
        a=0;
        b=1;
        c=0;
        d=0;
        e=0;
        #10;
        
        a=0;
        b=1;
        c=0;
        d=0;
        e=1;
        #10;
        
        a=0;
        b=1;
        c=0;
        d=1;
        e=0;
        #10;
        
        a=0;
        b=1;
        c=0;
        d=1;
        e=1;
        #10;
        
        a=0;
        b=1;
        c=1;
        d=0;
        e=0;
        #10;
        
        a=0;
        b=1;
        c=1;
        d=0;
        e=1;
        #10;
        
        a=0;
        b=1;
        c=1;
        d=1;
        e=0;
        #10;
        
        a=0;
        b=1;
        c=1;
        d=1;
        e=1;
        #10;
        
        a=1;
        b=0;
        c=0;
        d=0;
        e=0;
        #10;
        
        a=1;
        b=0;
        c=0;
        d=0;
        e=1;
        #10;
        
        a=1;
        b=0;
        c=0;
        d=1;
        e=0;
        #10;
        
        a=1;
        b=0;
        c=0;
        d=1;
        e=1;
        #10;
        
        a=1;
        b=0;
        c=1;
        d=0;
        e=0;
        #10;
        
        a=1;
        b=0;
        c=1;
        d=0;
        e=1;
        #10;
        
        a=1;
        b=0;
        c=1;
        d=1;
        e=0;
        #10;
        
        a=1;
        b=0;
        c=1;
        d=1;
        e=1;
        #10;
        
        a=1;
        b=1;
        c=0;
        d=0;
        e=0;
        #10;
        
        a=1;
        b=1;
        c=0;
        d=0;
        e=1;
        #10;
        
        a=1;
        b=1;
        c=0;
        d=1;
        e=0;
        #10;
        
        a=1;
        b=1;
        c=0;
        d=1;
        e=1;
        #10;
        
        a=1;
        b=1;
        c=1;
        d=0;
        e=0;
        #10;
        
        a=1;
        b=1;
        c=1;
        d=0;
        e=1;
        #10;
        
        a=1;
        b=1;
        c=1;
        d=1;
        e=0;
        #10;
        
        a=1;
        b=1;
        c=1;
        d=1;
        e=1;
        #10;
        
    end

endmodule
