`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2016 08:21:52 PM
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
/*
Order of Operations
		Invert/NOT
		AND / NAND
		XOR / XNOR
		OR / NOR
Bitwise Operators
        ~     NOT
        &    AND
        |     OR
        ^    XOR		
*/

module Problem1Mod(
    input a,
    input b,
    input c,
    input d,
    output reg x,
    output reg y
    );
    
    always @(a or b or c or d)
    begin
        if( !( ( a && c ) ^ ( b && d ) ) )
            x=1;
        else if ( !( b && d ) )
            x=1;
        else
            x=0;
    end
    
    always @(a or b or c or d)
        begin
            if( !( a && !c ) )
                y=1;
            else if( d && ( a ^ b ) && c )
                y=1;
            else if( d && ( !b || a ) )
                y=1;
            else
                y=0; 
        end
endmodule
