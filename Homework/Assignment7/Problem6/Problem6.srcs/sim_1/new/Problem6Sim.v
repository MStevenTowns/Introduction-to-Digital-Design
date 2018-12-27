`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2016 11:58:02 PM
// Design Name: 
// Module Name: Problem6Sim
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


module Problem6Sim();
    reg j, clk, k, arst, srst;
    wire q;
    Problem6Mod UUT(
        .j(j),
        .k(k),
        .clk(clk),
        .arst(arst),
        .srst(srst),
        .q(q)
    );
    
    always begin
            clk=~clk;
            #10;
        end
        
    initial
    begin
        j=0;
        k=0;
        clk=0;
        arst=0;
        srst=0;
        #10;
        arst=1;
        srst=1;
        #10;
        arst=0;
        srst=0;
        #10;
        
        k=1;
        #10;
        k=0;
        #10;
        
        j=1;
        #10;
        j=0;
        #10;
        j=1;
        k=1;
        #100;
        j=0;
        k=0;
        #50;
        
        j=1;
        #20;
        j=0;
        #100;
        
        
        j=0;
        k=0;
        clk=0;
        arst=1;
        srst=0;
        #10;
        arst=1;
        srst=1;
        #10;
        arst=0;
        srst=0;
        #10;
        
        k=1;
        #10;
        k=0;
        #10;
        
        j=1;
        #10;
        j=0;
        #10;
        j=1;
        k=1;
        #100;
        j=0;
        k=0;
        #50;
        
        j=1;
        #20;
        j=0;
        #100;
        
        
        
        j=0;
        k=0;
        clk=0;
        arst=0;
        srst=1;
        #10;
        arst=1;
        srst=1;
        #10;
        arst=0;
        srst=0;
        #10;
        
        k=1;
        #10;
        k=0;
        #10;
        
        j=1;
        #10;
        j=0;
        #10;
        j=1;
        k=1;
        #100;
        j=0;
        k=0;
        #50;
        
        j=1;
        #20;
        j=0;
        #100;
        
        
        j=0;
        k=0;
        clk=0;
        arst=1;
        srst=1;
        #10;
        arst=1;
        srst=1;
        #10;
        arst=0;
        srst=0;
        #10;
        
        k=1;
        #10;
        k=0;
        #10;
        
        j=1;
        #10;
        j=0;
        #10;
        j=1;
        k=1;
        #100;
        j=0;
        k=0;
        #50;
        
        j=1;
        #20;
        j=0;
        #100;
        $stop;
    end
endmodule
