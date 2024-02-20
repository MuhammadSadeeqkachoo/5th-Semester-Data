module Tb();
  reg [1:0] I;
  reg sel;
  wire out;

  mux2x1 mux (I, sel, out);

  initial begin
    I[0] = 0;
    I[1] = 1;
    sel = 0;
    #10;

    I[0] = 1;
    I[1] = 0;
    sel = 1;
    #10;

    $monitor("%b %b %b %b ", I[0], I[1], sel, out);
  end
endmodule

