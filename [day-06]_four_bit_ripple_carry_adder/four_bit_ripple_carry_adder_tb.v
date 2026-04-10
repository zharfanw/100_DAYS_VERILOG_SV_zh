module four_bit_ripple_carry_adder_tb();
reg [3:0]a,b;
wire [3:0]s;
wire cout;
four_bit_ripple_carry_adder uut(.a(a),.b(b),.s(s),.cout(cout));

initial begin
$dumpfile("four_bit_ripple_carry_adder_tb.vcd");
$dumpvars(0, four_bit_ripple_carry_adder_tb);
end

initial begin
a=4'b0000;b=4'b0110;#100;
a=4'b0011;b=4'b1001;#100;
$finish;
end
endmodule
