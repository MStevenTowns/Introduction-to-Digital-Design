`timescale 1ns / 1ps

module MuxSim();
    reg [3:0] i;
    reg [1:0] s;
    wire y;
    
    MUX41 UUT(
        .i(i),
        .s(s),
        .y(y)
        
    );
    
    reg [2:0] Sin;
    reg [4:0] Iin;
    
    initial begin
        for(Iin=0;Iin<=5'b01111;Iin=Iin+1)
        begin
            for(Sin=0;Sin<=3'b011;Sin=Sin+1) 
            begin
                i = Iin[3:0];
                s = Sin[1:0];
                #10;
            end
        end
        $finish;
    end

endmodule
