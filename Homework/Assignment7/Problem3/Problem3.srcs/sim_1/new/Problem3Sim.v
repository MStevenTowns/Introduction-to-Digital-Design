`timescale 1ns / 1ps

module Problem3Sim();

    reg r, s;
    Problem3Mod UUT(
        .r(r),
        .s(s),
        .q(q),
        .qn(qn)
    );
    
    reg a=0;
    reg d=1;
    initial
    begin
        r=d;
        s=d;
        
        #100;//100
        s=a;
        
        #100;//200
        s=d;
        
        #100//300
        r=a;
        
        #100;//400
        r=d;
        
        #100;//500
        s=a;
        r=a;
        
        #100;//600
        s=d;
        #1;//601
        r=d;
        
        #100;//700
        r=a;
        s=a;
        
        #100;
        $stop; 
    end
endmodule
