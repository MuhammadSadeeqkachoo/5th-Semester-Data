module tb_mux4x1();

  reg [3:0] I;
  reg [1:0] sel;
  wire out;

  mux4x1 mux (I, sel, out);

  initial begin
    // Test case 1
    I = 4'b0000;
    sel = 2'b00;
    #10;

    // Test case 2
    I = 4'b1111;
    sel = 2'b01;
    #10;

    // Test case 3
    I = 4'b0101;
    sel = 2'b10;
    #10;

    // Test case 4
    I = 4'b1100;
    sel = 2'b11;
    #10;

    $finish;
  end

  always @* begin
    $display("Input: %b, Select: %b, Output: %b", I, sel, out);
  end

endmodule
