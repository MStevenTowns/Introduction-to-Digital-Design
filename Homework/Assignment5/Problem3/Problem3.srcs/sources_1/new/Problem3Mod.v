`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2016 09:15:55 PM
// Design Name: 
// Module Name: Problem3Mod
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


module Problem3Mod(
    input [3:0] a,
    input [3:0] b,
    input [2:0] opCode,
    output reg [3:0] res,
    output reg error
    );
    always @(a or b or opCode)
    begin
       case(opCode)
            3'b000: 
            begin
                res[0]=~a[0];
                res[1]=~a[1];
                res[2]=~a[2];
                res[3]=~a[3];
                error=0;
            end
            3'b001: 
            begin
                res[0]=(~(a[0]&b[0]));
                res[1]=(~(a[1]&b[1]));
                res[2]=(~(a[2]&b[2]));
                res[3]=(~(a[3]&b[3]));  
                error=0;    
            end
            3'b010: 
            begin
                res[0]=(~(a[0]|b[0]));
                res[1]=(~(a[0]|b[1]));
                res[2]=(~(a[0]|b[2]));
                res[3]=(~(a[0]|b[3]));
                error=0;
            end
            3'b011:    
            begin
                res[0]=a[0]^b[0];
                res[1]=a[0]^b[1];
                res[2]=a[0]^b[2];
                res[3]=a[0]^b[3];
                error=0;
            end
            3'b100: 
            begin
                res=(a+b);
                error=(a[3]&(b[3])&~res[3])|(~a[3]&(~b[3])&res[3]);   
            end
            3'b101:   
            begin  
                res=(a-b);
                error=(a[3]&(~b[3])&~res[3])|(~a[3]&(b[3])&res[3]); 
            end
            3'b110: 
            begin
                res=b+1;
                if(res[3]==1&&b[3]!=1) error=1;
                else error=0;
            end
            3'b111:
            begin
                res=b-1;
                if(res[3]==0&&b[3]!=0) error=1;
                else error=0;
            end
        endcase
    end
endmodule
