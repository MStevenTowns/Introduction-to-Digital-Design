`timescale 1ns / 1ps

module Problem3Mod(
    input [7:0] i,
    output reg [7:0] o,
    input [1:0] s,
    input f,
    input d,
    input r
    );
    reg hold;
    reg count;
    
    always @(i or s or f or d or r)
    begin
    o=i;
        for(count=s;count>=5'b00000;count=count-1)
        begin
            if (d)
            begin
                //shift right
                hold=o[0];
                o[0]=o[1];
                o[1]=o[2];
                o[2]=o[3];
                o[3]=o[4];
                o[4]=o[5];
                o[5]=o[6];
                o[6]=o[7];
                if (r) o[7]=hold;
                else o[7]=f;
            end
            else
            begin
                //shift left
                hold=o[7];
                o[7]=o[6];
                o[6]=o[5];
                o[5]=o[4];
                o[4]=o[3];
                o[3]=o[2];
                o[2]=o[1];
                o[1]=o[0];
                if (r) o[0]=hold;
                else o[0]=f;
            end
        end
    end
endmodule
