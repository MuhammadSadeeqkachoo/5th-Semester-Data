module mux_4to1 (A, B, S, out);
	input A, B;
	input [0:1]S;
	output reg out;
	always @(A, B, S)
  	case (S)
	    2'b00:out = A;
	    2'b01:out = B;
	    2'b10:out = A + B;
	    default:out = A - B;
	endcase	
endmodule
