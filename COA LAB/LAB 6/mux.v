module mux2x1(I,sel,out);

input[1:0]I; //I[0].I[1]
input sel;
output out;
reg out;
always @(I,sel)
	case(sel)
		1'b0 : out = I[0];
		1'b1 : out = I[1];
	endcase
endmodule 
