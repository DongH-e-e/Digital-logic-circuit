module SimpleCPU_tb;

reg clk, rst;
wire [7:0] result;

SimpleCPU dut (
    .clk(clk),
    .rst(rst),
    .result(result)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk; // Toggle clock every 5 time units
end

initial begin
    rst = 1; // Assert reset
    #10; // Wait for 10 time units
    rst = 0; // De-assert reset
    #100; // Simulate for 100 time units
    $finish; // End simulation
end

endmodule
