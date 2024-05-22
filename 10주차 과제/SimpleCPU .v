module SimpleCPU (
    input wire clk,
    input wire rst,
    output wire [7:0] result
);

wire [15:0] instruction;
wire [3:0] opcode;
wire [3:0] operand1;
wire [3:0] operand2;
wire [7:0] execute_result;

Fetch fetch_inst (
    .clk(clk),
    .rst(rst),
    .instruction(instruction)
);

Decode decode_inst (
    .instruction(instruction),
    .opcode(opcode),
    .operand1(operand1),
    .operand2(operand2)
);

Execute execute_inst (
    .opcode(opcode),
    .operand1(operand1),
    .operand2(operand2),
    .result(execute_result)
);

assign result = execute_result;

endmodule