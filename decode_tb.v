`timescale 1ns/1ns

module decoder2x4_tb;

    // Inputs
    reg [1:0] i;

    // Outputs
    wire [3:0] d;

    // Instantiate the module to be tested
    decoder2x4 dut (
        .i(i),
        .d(d)
    );

    // Stimulus
    initial begin
        $display("Testing 2x4 Decoder");
        $display("-------------------");

        // Case 1: i = 00
        i = 2'b00;
        #10; // Wait for 10 time units
        $display("Case 1: i = %b, d = %b", i, d);

        // Case 2: i = 01
        i = 2'b01;
        #10; // Wait for 10 time units
        $display("Case 2: i = %b, d = %b", i, d);

        // Case 3: i = 10
        i = 2'b10;
        #10; // Wait for 10 time units
        $display("Case 3: i = %b, d = %b", i, d);

        // Case 4: i = 11
        i = 2'b11;
        #10; // Wait for 10 time units
        $display("Case 4: i = %b, d = %b", i, d);

        // Additional case to test default condition
        // Case 5: i = 10 (invalid input)
        i = 2'b10;
        #10; // Wait for 10 time units
        $display("Case 5: i = %b (Invalid input), d = %b (Expected default output)", i, d);

        $finish; // End simulation
    end

endmodule
