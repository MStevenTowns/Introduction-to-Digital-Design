`timescale 1ns / 1ps

module Problem2Sim();
    reg r, s;
    wire q, qn;
    
    Problem2Mod UUT(
        .r(r),
        .s(s),
        .q(q),
        .qn(qn)
    );
    reg a=1;
    reg d=0;
    
    initial
    begin
        r=d;
        s=d;
        
        #100;//100
        s=a;
        
        #100;//200
        s=d;
        
        #100;//300;
        r=a;
        
        #100;//400;
        r=d;
        
        #100;//500
        r=a;
        s=a;
        
        #100;//600
        s=d;
        r=d;
        
        #100;//700
        s=a;
        r=a;
        
        #100;
        $stop;
    end

endmodule
