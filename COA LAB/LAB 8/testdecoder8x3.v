module Decoder3x8(
  input [2:0] in,
  output [7:0] out
);

  assign out[0] = ~(in[2] | in[1] | in[0]);
  assign out[1] = ~(in[2] | in[1] | ~in[0]);
  assign out[2] = ~(in[2] | ~in[1] | in[0]);
  assign out[3] = ~(in[2] | ~in[1] | ~in[0]);
  assign out[4] = ~(~in[2] | in[1] | in[0]);
  assign out[5] = ~(~in[2] | in[1] | ~in[0]);
  assign out[6] = ~(~in[2] | ~in[1] | in[0]);
  assign out[7] = ~(~in[2] | ~in[1] | ~in[0]);

endmodule

module Decoder3x8_tb;

  // Inputs
  reg [2:0] in;
  
  // Outputs
  wire [7:0] out;

  // Instantiate the Decoder module
  Decoder3x8 uut (
    .in(in),
    .out(out)
  );

  // Stimulus generation
  initial begin
    $display("Input\tOutput");
    $monitor("%b\t%b", in, out);

    // Test all possible input combinations
    for (int i = 0; i < 8; i = i + 1) begin
      in = i;
      #10;
    end

    // Finish simulation
    $finish;
  end

endmodule

