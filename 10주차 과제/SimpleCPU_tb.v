module SimpleCPU_tb;

    // Testbench signals
    reg clk;
    reg rst;
    wire [7:0] result;

    // Instantiate the CPU
    SimpleCPU cpu (
        .clk(clk),
        .rst(rst),
        .result(result)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;

        // Memory initialization (in Fetch module)
        // Assuming the Fetch module memory can be accessed and initialized here
        // Assign some instructions to the memory for the test
        // The format is: memory[address] = instruction;
        cpu.fetch_inst.memory[0] = 16'b0000_0001_0010_0000; // ADD operand1=1, operand2=2
        cpu.fetch_inst.memory[1] = 16'b0001_0010_0001_0000; // SUB operand1=2, operand2=1

        // Release reset after some time
        #10 rst = 0;

        // Run the CPU for some clock cycles to process the instructions
        #100;

        // Check the result (the last result value)
        $display("Result: %d", result);

        // Finish simulation
        $finish;
    end

endmodule
