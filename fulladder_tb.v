module fulladder_tb;
  reg a, b, c;
  wire sum, cout;
  integer i;

  // Instantiate the full adder
  fulladder dut (.a(a), .b(b), .c(c), .sum(sum), .cout(cout));

  initial begin
    $monitor($time, " a=%b, b=%b, c=%b, sum=%b, cout=%b", a, b, c, sum, cout);
    for (i = 0; i < 8; i = i + 1) begin
      {a, b, c} = i[2:0]; // Assign the lower 3 bits of i to a, b, c
      #5;
    end
    #5 $finish;
  end
endmodule
