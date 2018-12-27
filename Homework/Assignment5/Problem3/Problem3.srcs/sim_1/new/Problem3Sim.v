`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2016 10:31:22 PM
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
    reg [3:0] a;
    reg [3:0] b;
    reg [2:0] opCode;
    wire [3:0] res;
    wire error;
    
    Problem3Mod UUT(
        .a(a),
        .b(b),
        .res(res),
        .opCode(opCode),
        .error(error)
    );

    initial begin
        opCode=3'b000;
        a=4'b1010;
        #10;
        
        opCode=3'b001;
        a=4'b1010;
        b=4'b1001;
        #10;
        
        opCode=3'b010;
        a=4'b1010;
        b=4'b1001;
        #10;
        
        opCode=3'b011;
        a=4'b1010;
        b=4'b1011;
        #10;
        
        opCode=3'b100;
        a=4'b1010;
        b=4'b1001;
        #10;
        a=4'b0001;
        b=4'b0001;
        #10;
        a=4'b0111;
        b=4'b0001;
        #10;        
       
        opCode=3'b101;
        a=4'b1010;
        b=4'b1001;
        #10;
        a=4'b0001;
        b=4'b0001;
        #10;
        a=4'b1111;
        b=4'b0001;
        #10; 
        
        opCode=3'b110;
        a=0;
        b=4'b1111;
        #10;
        b=4'b0000;
        #10;
        b=4'b0111;
        #10; 
        
        opCode=3'b111;
        b=4'b1000;
        #10;
        b=4'b0000;
        #10;
        b=4'b0111;
        #10; 
        $stop;
    end
endmodule
