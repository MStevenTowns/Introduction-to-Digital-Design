`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2015 01:28:39 PM
// Design Name: 
// Module Name: demoSim
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


module demoSim();

    reg A;
    reg B;
    reg C;
    
    wire X;
    wire Y;
    
    demo UUT(
        .A(A), //put name of reg in ()
        .B(B),
        .C(C),
        .X(X),
        .Y(Y)
    );
    
    initial begin
    A = 0;
    B = 0;
    C = 0;
    
    #10; //delay for 10 nanoseconds
    C=1;
    #10;
    
    B=1;
    C=0;
    #10;
    
    C=1;
    #10;
    
    A=0;
    B=0;
    C=0;
    #10;
     
    C=1;
    #10;
    
    B=1;
    C=0;
    #10;
    
    C=1;
    
    
    end
    
endmodule
