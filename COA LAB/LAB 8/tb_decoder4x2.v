module tb();
reg A;
reg B;
reg e;
wire [0:3]I;

decoder2x4 dec(A,B,e,I);

initial begin

A=0;
B=0;
e=0;
$display("%b %b %b %b %b %b %b",A,B,e,I[0],I[1],I[2],I[3]);

A=0;B=0;e=1;
#10 $display("%b %b %b %b %b %b %b",A,B,e,I[0],I[1],I[2],I[3]);

A=0;B=1;e=1;
#10 $display("%b %b %b %b %b %b %b",A,B,e,I[0],I[1],I[2],I[3]);

A=1;B=0;e=1;
#10 $display("%b %b %b %b %b %b %b",A,B,e,I[0],I[1],I[2],I[3]);

A=1;B=1;e=1;
#10 $display("%b %b %b %b %b %b %b",A,B,e,I[0],I[1],I[2],I[3]);

end
endmodule
