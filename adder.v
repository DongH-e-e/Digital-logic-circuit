module full_adder_4bit(
    input [3:0] A,     
    input [3:0] B,     
    input Cin,        
    output [3:0] S,    
    output Cout        
);

wire [3:0] sum;       
wire [3:0] carry_out; 


full_adder fa0(A[0], B[0], Cin, sum[0], carry_out[0]);
full_adder fa1(A[1], B[1], carry_out[0], sum[1], carry_out[1]);
full_adder fa2(A[2], B[2], carry_out[1], sum[2], carry_out[2]);
full_adder fa3(A[3], B[3], carry_out[2], sum[3], Cout);

assign S = sum;      
assign Cout = carry_out[3]; 

endmodule
