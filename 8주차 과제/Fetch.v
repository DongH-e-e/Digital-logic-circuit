module Fetch (
    input wire clk,
    input wire rst,
    output reg [15:0] instruction
);

reg [15:0] memory [0:1023]; 

integer PC;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        PC <= 0; // Reset PC to 0
    end
    else begin
        PC <= PC + 1; 
    end
end

assign instruction = memory[PC];

endmodule

