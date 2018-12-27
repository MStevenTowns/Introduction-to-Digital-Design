`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 05:28:32 PM
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
    reg [7:0] a;
    reg [7:0] b;
    reg subtract;
    wire [7:0] sum;
    wire error;
        
    Problem6Mod UUT(
        .a(a),
        .b(b),
        .subtract(subtract),
        .sum(sum),
        .error(error)
        );
    
    initial         
    begin
        subtract=0;
        a=8'b00000000;
        b=8'b00000000;
        #10;
        a=8'b00000000;
        b=8'b10101010;
        #10;
        a=8'b10101010;
        b=8'b00000000;
        #10;
        a=8'b10101010;
        b=8'b10101010;
        #10;        
        a=8'b00000001;
        b=8'b11111111;
        #10;
        a=8'b11111111;
        b=8'b00000001;
        #10;
        a=8'b11111111;
        b=8'b11111111;
        #10;
        a=8'b01111111;
        b=8'b01111111;
        #10;
        subtract=1;
        a=8'b00000000;
        b=8'b00000000;
        #10;
        a=8'b00000000;
        b=8'b10101010;
        #10;
        a=8'b10101010;
        b=8'b00000000;
        #10;
        a=8'b10101010;
        b=8'b10101010;
        #10;        
        a=8'b00000001;
        b=8'b11111111;
        #10;
        a=8'b11111111;
        b=8'b00000001;
        #10;
        a=8'b11111111;
        b=8'b11111111;
        #10;
        a=8'b01111111;
        b=8'b01111111;
        #10;
        
        $stop;
    end
    
endmodule
