`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 02:47:04 PM
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
    reg a,b,c;
    wire y;
    
    Problem1Mod UUT(
        .a(a),
        .b(b),
        .c(c),
        .y(y)   
    );
    
    initial begin
        b=1;
        c=1;
        a=1;
        #10;
        
        a=0;
        
        #10;
        
        a=1;
        #10;
        
        $stop;
    end

endmodule
