module tb();

reg S,R;

wire Q,Q_Bar;

SR_Latch Latch(S,R,Q,Q_Bar);

initial begin 
#10
S=0;
R=0;
#10

S=0;
R=1;
#10

S=1;
R=0;
#10

S=1;
R=1;

end initial
$monitor("%b %b %b %b",S,R,Q,Q_Bar);
endmodule











