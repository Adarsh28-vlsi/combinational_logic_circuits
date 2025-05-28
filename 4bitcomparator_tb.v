module tb_comparator4bit;
  reg  [3:0] a, b;
  wire lt, eq, gt;


  comparator4bit uut (
    .a(a),
    .b(b),
    .lt(lt),
    .eq(eq),
    .gt(gt)
  );

  initial begin

    a = 4'b0010; b = 4'b0100; #10;
    $display("a=%b, b=%b | lt=%b, eq=%b, gt=%b", a, b, lt, eq, gt);


    a = 4'b0111; b = 4'b0111; #10;
    $display("a=%b, b=%b | lt=%b, eq=%b, gt=%b", a, b, lt, eq, gt);


    a = 4'b1010; b = 4'b0011; #10;
    $display("a=%b, b=%b | lt=%b, eq=%b, gt=%b", a, b, lt, eq, gt);


    a = 4'b0000; b = 4'b0000; #10;
    $display("a=%b, b=%b | lt=%b, eq=%b, gt=%b", a, b, lt, eq, gt);


    a = 4'b1111; b = 4'b1111; #10;
    $display("a=%b, b=%b | lt=%b, eq=%b, gt=%b", a, b, lt, eq, gt);

    $finish;
  end
endmodule
