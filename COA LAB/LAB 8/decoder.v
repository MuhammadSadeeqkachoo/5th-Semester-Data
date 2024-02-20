module decoder2x4(A,B,e,I);
input A;
input B;
input e;

output [3:0]I;


wire nA;
wire nB;

not n1(nA,A);
not n2(nB,B);

and A1(I[0],nA,nB,e);
and A2(I[1],nA,B,e);
and A3(I[2],A,nB,e);
and A4(I[3],A,B,e);

endmodule;