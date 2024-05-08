module Decode (
    input wire [15:0] instruction,
    output reg [3:0] opcode,
    output reg [3:0] operand1,
    output reg [3:0] operand2
);

always @(*) begin
    opcode = instruction[15:12];
    operand1 = instruction[11:8];
    operand2 = instruction[7:4];
end

endmodule

