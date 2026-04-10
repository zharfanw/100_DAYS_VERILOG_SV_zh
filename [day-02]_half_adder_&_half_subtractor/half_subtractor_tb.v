module half_subtractor_tb();
    reg t_a,t_b;
    wire di,bo;
    half_subtractor uut(.a(t_a),.b(t_b),.di(di),.bo(bo));

    initial begin
    $dumpfile("half_subtractor_tb.vcd");
    $dumpvars(0, half_subtractor_tb);
    end

    initial begin
    t_a=0;t_b=0;
    #100;t_a=0;t_b=1;
    #100;t_a=1;t_b=0;
    #100;t_a=1;t_b=1;
    #100;
    $finish;
    end
endmodule
