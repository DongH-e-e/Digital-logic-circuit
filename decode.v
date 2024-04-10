module decoder2x4(i, d); 
input [1:0] i; 
output [3:0] d; 
reg [3:0] d; 
// 2x4 Decoder 
always @(*) 
 begin 
case (i)  // I 

2'b00 : d <= 4'b0001; // II 
 
     2'b01 : d <= 4'b0010; 
     2'b10 : d <= 4'b0100; // III 
     2'b11 : d <= 4'b1000; 
     default : d <= 4'b0001; 
         endcase // IV 
   end 
endmodule 