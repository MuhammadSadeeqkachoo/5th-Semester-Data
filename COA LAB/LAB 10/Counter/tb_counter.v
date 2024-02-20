module tb();

reg clk,rst;

wire[3:0] count;

counter cnt(.clk(clk),.rst(rst),.count(count));

initial begin

clk = 1'b0;
rst = 1'b1;
#10

clk = 1'b1;
rst = 1'b0;

end

endmodule
