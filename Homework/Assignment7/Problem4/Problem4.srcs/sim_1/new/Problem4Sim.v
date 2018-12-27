`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2016 08:57:16 PM
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
    reg t, rst, clk;
    wire q;
    
    Problem4Mod UUT(
        .t(t),
        .rst(rst),
        .clk(clk),
        .q(q)
    );
    
    always begin//this is how you use clock
        clk=~clk;
        #10;
    end
    
    initial
    begin
        clk=0;
        t=0;
        rst=1;
        #10;
        rst=0;
        #10;
        
        t=1;
        #110;
        t=0;
        #50;
        
        t=1;
        #60;
        t=0;
        #60;
        $stop;
    end
endmodule
