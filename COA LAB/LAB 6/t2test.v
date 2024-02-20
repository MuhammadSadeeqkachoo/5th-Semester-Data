module mux_4to1_tb;
  // Declare the inputs and outputs
  reg A, B, S;
  wire Y;

  // Instantiate the MUX module
  mux_4to1 uut(A,B,S,Y);

  // Initialize the inputs
initial begin
    A = 'b0; B = 'b0; S = 'b00; #100;
    $display("Time %0t: A = %b, B = %b, S = %b, Y = %b", $time, A, B, S, Y);
    
    A = 'b1; B = 'b0; S = 'b01; #100;
    $display("Time %0t: A = %b, B = %b, S = %b, Y = %b", $time, A, B, S, Y);
    
    A = 'b1; B = 'b1; S = 'b10; #100;
    $display("Time %0t: A = %b, B = %b, S = %b, Y = %b", $time, A, B, S, Y);
    
    A = 'b1; B = 'b0; S = 'b11; #100;
    $display("Time %0t: A = %b, B = %b, S = %b, Y = %b", $time, A, B, S, Y);
  end 
endmodule

