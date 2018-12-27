`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2016 12:42:22 PM
// Design Name: 
// Module Name: Problem1Mod
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


module Problem1Mod(
    input clk,
    output reg [6:0] seg,
    output reg [3:0] an
    );
    
    reg[17:0] count;
    reg refreshRate;
    reg[1:0] digit =2'b00;
    
    initial
    begin
        count=0;
    end
    
    always @(posedge clk)
    begin
        if(count==200000) 
        begin
            refreshRate=~refreshRate;
            count=0;
        end
        count=count+1; 
    end
    
    always @(posedge refreshRate)  //240+ HZ INPUT
    begin
        case(digit)
            2'b00://display 4 at digit 0;
            begin
                seg=7'b0011001;
                an=4'b1110;//far right
            end
            2'b01://3
            begin
                seg=7'b0110000;
                an=4'b1101;
            end
            2'b10://2
            begin
                seg=7'b0100100;
                an=4'b1011;
            end
            2'b11://1
            begin
                seg=7'b1111001;
                an=4'b0111;//far left
            end
        endcase
        digit=digit+1;
    end

endmodule
