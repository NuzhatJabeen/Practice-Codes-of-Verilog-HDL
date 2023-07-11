//Test Bench of Half Adder

module stimulus;
  wire S,C;
  reg A,B;
  half_adder ha(S,C,A,B);
  initial
  $monitor($time,"S=%b,C=%b,A=%b,B=%b",S,C,A,B);
  initial
  begin
  A=1'b0;B=1'b0;
  #2 A=1'b0;B=1'b1;
  #2 A=1'b1;B=1'b0;
  #2 A=1'b1;B=1'b1;
  #2 $stop;
end
endmodule