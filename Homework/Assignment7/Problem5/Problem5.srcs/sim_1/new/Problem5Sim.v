`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2016 10:00:09 PM
// Design Name: 
// Module Name: Problem5Sim
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


module Problem5Sim();
    reg [7:0] d;
    reg arst, srst, clk;
    wire [7:0] q;
    
    Problem5Mod UUT(
        .d(d),
        .arst(arst),
        .srst(srst),
        .clk(clk),
        .q(q)
    );
    
    always begin
        clk=~clk;
        #10;
    end
    
    initial
    begin
        clk=0;
        arst=0;
        srst=0;
        d=0;
        #10;
        arst=1;
        srst=1;
        #10;
        arst=0;
        srst=0;
        
        #10;
        d=8'b01010101;
        #10;
        d=8'b11111111;
        #10;
        d=8'b00000011;
        
        srst=1;
        #10;
        d=8'b01010101;
        #10;
        d=8'b11111111;
        #10;
        d=8'b00000011;
        
        #10;
        srst=0;
        #10;
        d=8'b01010101;
        #10;
        d=8'b11111111;
        #10;
        d=8'b00000011;
        
        arst=1;
        #10;
        d=8'b01010101;
        #10;
        d=8'b11111111;
        #10;
        d=8'b00000011;
        
        #10;
        arst=0;
        #10;
        d=8'b01010101;
        #10;
        d=8'b11111111;
        #10;
        d=8'b00000011;
        $stop;
    end

endmodule
