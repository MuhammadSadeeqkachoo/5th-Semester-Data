module counter(clk,rst,count);

input clk,rst;

output reg[7:0] count;

always @(posedge clk)

if(rst==1)

count <= 1'b0;

else

count <= count + 1;


endmodule
