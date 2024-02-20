module mux4x1 (
  input [3:0] I,
  input [1:0] sel,
  output reg out
);

  wire w1, w2;

  mux2x1 m1 (I[0], I[1], sel[0], w1);
  mux2x1 m2 (I[2], I[3], sel[0], w2);

  mux2x1 m3 (w1, w2, sel[1], out);

endmodule

module mux2x1 (
  input I0,
  input I1,
  input sel,
  output wire out
);

  always @* begin
    case (sel)
      1'b0: out = I0;
      1'b1: out = I1;
    endcase
  end

endmodule

