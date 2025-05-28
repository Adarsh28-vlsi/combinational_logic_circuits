module comparator4bit(a,b,lt,eq,gt);
  input [3:0] a,b;
  output lt,eq,gt;
  assign lt = (a<b);
  assign eq = (a==b);
  assign gt = (a>b);
endmodule
