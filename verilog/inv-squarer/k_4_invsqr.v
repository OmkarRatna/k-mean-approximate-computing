module k_4_invsqr(input [15:0]in, input clk, output [15:0]out);
wire [4:0] ea,exponent;
reg [9:0] Rt;
assign ea=(in[14:10]-5'd15)<<1'b1;
assign exponent=5'd15-ea;
assign out={1'b0,exponent,Rt};

always @(posedge clk)
begin
if(in[9:4]<6'b001001) //1.1459
Rt=10'b1101111101;	//0.872672413
else if(in[9:4]<6'b010101) //1.339205
Rt=10'b1010011011;	//0.651635086
else if(in[9:4]<6'b100110) //1.605975
Rt=10'b0111011100;	//0.464956872
else
Rt=10'b0100111110;	//0.311336476
end

endmodule
