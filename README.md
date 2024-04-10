`timescale 1ns / 1ps

module testbench_mux4x1;

  // Parameters
  parameter DELAY = 10; // Delay for stimulus generation
  
  // Signals
  reg [3:0] i;
  reg [1:0] s;
  wire y;
  
  // Instantiate the mux4x1 module
  mux4x1 uut(
    .i(i),
    .s(s),
    .y(y)
  );
  
  // Stimulus
  initial begin
    // Test Case 1: s = 00, i[0] is selected
    i = 4'b1000;
    s = 2'b00;
    #DELAY;
    $display("Test Case 1: s = %b, i = %b, y = %b", s, i, y);
    
    // Test Case 2: s = 01, i[1] is selected
    i = 4'b0100;
    s = 2'b01;
    #DELAY;
    $display("Test Case 2: s = %b, i = %b, y = %b", s, i, y);
    
    // Test Case 3: s = 10, i[2] is selected
    i = 4'b0010;
    s = 2'b10;
    #DELAY;
    $display("Test Case 3: s = %b, i = %b, y = %b", s, i, y);
    
    // Test Case 4: s = 11, i[3] is selected
    i = 4'b0001;
    s = 2'b11;
    #DELAY;
    $display("Test Case 4: s = %b, i = %b, y = %b", s, i, y);
    
    // Additional Test Case: s = 10, i[2] is selected
    i = 4'b1010;
    s = 2'b10;
    #DELAY;
    $display("Test Case 5: s = %b, i = %b, y = %b", s, i, y);
    
    // Additional Test Case: s = 11, i[3] is selected
    i = 4'b0110;
    s = 2'b11;
    #DELAY;
    $display("Test Case 6: s = %b, i = %b, y = %b", s, i, y);
    
    // Add more test cases if needed
    
    $finish;
  end
  
endmodule
