`timescale 1ns / 1ps

module Problem1Sim(
    input [3:0] sw,
    output reg dis=0,
    output reg [6:0] seg
    );
    
    always @(sw)
    begin
    /*
    seg[0]=1; T
    seg[1]=1;TR
    seg[2]=1;BR
    seg[3]=1;B
    seg[4]=0;BL
    seg[5]=1;TL
    seg[6]=1;C
    */
        case(sw)
            0:seg=63;//0
            1:seg=6;//1
            2:seg=91;//2
            3:seg=79;//3
            4:seg=102;//4
            5:seg=109;//5
            6:seg=125;//6
            7:seg=7;//7
            8:seg=127;//8
            9:seg=111;//9
            10:seg=119;//a
            11:seg=124;//b
            12:seg=88;//c
            13:seg=94;//d
            14:seg=121;//e
            15:seg=113;//f
        endcase
        seg[0]=(!seg[0]);//i gave values for 1=on, this corrects to 1=off         
        seg[1]=(!seg[1]);
        seg[2]=(!seg[2]);
        seg[3]=(!seg[3]);
        seg[4]=(!seg[4]);
        seg[5]=(!seg[5]);
        seg[6]=(!seg[6]);
        
    end
endmodule
