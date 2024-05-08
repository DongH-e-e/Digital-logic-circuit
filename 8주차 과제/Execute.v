module Execute (
    input wire [3:0] opcode,
    input wire [3:0] operand1,
    input wire [3:0] operand2,
    output reg [7:0] result
);

always @(*) begin
    case(opcode)
        4'b0000: result = operand1 + operand2; 
        4'b0001: result = operand1 - operand2; 
        // Add more operations as needed
        default: result = 8'b0; 
    endcase
end

endmodule
