module half_subtractor(a,b,di,bo);
  input a,b;
  output di,bo;

  assign di=a^b;
  assign bo= ~a&b;

endmodule
