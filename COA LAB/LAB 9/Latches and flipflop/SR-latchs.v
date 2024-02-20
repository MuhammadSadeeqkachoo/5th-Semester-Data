module SR_Latch(S,R,Q,Q_Bar);

input S,R;
output Q,Q_Bar;
reg Q,Q_Bar;

assign Q = ~(S&Q_Bar);
assign Q_Bar = ~(R&Q);

endmodule