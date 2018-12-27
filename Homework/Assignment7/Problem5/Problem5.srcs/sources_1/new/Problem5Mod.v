`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2016 09:44:11 PM
// Design Name: 
// Module Name: Problem5Mod
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


module Problem5Mod(
    input [7:0] d,
    input srst,
    input arst,
    input clk,
    output [7:0] q
    );
    
    reg rst;
    
    always @(arst)
    begin
        rst=srst||arst;
        //q=0;
    end
    
    always @(posedge clk)
    begin
        rst=srst||arst;
        if(rst)
        begin
            //q=0;
        end
        
    end
    
    DFlipFlop zero(  
        .d(d[0]),
        .clk(clk),
        .rst(rst),
        .q(q[0])
    );
    DFlipFlop one(  
        .d(d[1]),
        .clk(clk),
        .rst(rst),
        .q(q[1])
    );
    DFlipFlop two(  
        .d(d[2]),
        .clk(clk),
        .rst(rst),
        .q(q[2])
    );
    DFlipFlop three(  
        .d(d[3]),
        .clk(clk),
        .rst(rst),
        .q(q[3])
    );
    DFlipFlop four(  
        .d(d[4]),
        .clk(clk),
        .rst(rst),
        .q(q[4])
    );
    DFlipFlop five(  
        .d(d[5]),
        .clk(clk),
        .rst(rst),
        .q(q[5])
    );
    DFlipFlop six(  
        .d(d[6]),
        .clk(clk),
        .rst(rst),
        .q(q[6])
    );
    DFlipFlop seven(  
        .d(d[7]),
        .clk(clk),
        .rst(rst),
        .q(q[7])
    );
    
endmodule
