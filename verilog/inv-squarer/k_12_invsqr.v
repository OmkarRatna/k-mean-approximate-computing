module k_12_invsqr(input [15:0]in, input clk, output [15:0]out);
wire [4:0] ea,exponent;
reg [9:0] Rt;
assign ea=(in[14:10]-5'd15)<<1'b1;
assign exponent=5'd15-ea;
assign out={1'b0,exponent,Rt};

always @(posedge clk)
begin
if(in[9:2]<8'b00010001) //1.06681
Rt=10'b1110111111; //0.9373695
else if(in[9:2]<8'b00100100) //1.14071
Rt=10'b1101001001; //0.821742414
else if(in[9:2]<8'b00111000) //1.22036
Rt=10'b1011011111; //0.718348097
else if(in[9:2]<8'b01001101) //1.304085
Rt=10'b1010000011; //0.628354043
else if(in[9:2]<8'b01100011) //1.390135
Rt=10'b1000110100; //0.551614291
else if(in[9:2]<8'b01111010) //1.476995
Rt=10'b0111110010; //0.487037589
else if(in[9:2]<8'b10010000) //1.563585
Rt=10'b0110111011; //0.433010123
else if(in[9:2]<8'b10100110) //1.64939
Rt=10'b0110001101;  //0.387751775
else if(in[9:2]<8'b10111100) //1.73455
Rt=10'b0101100101; //0.349533282
else if(in[9:2]<8'b11010001) //1.81996
Rt=10'b0101000100; //0.316774425
else if(in[9:2]<8'b11101000) //1.90745
Rt=10'b0100100110; //0.288060579
else
Rt=10'b0100001100; //0.262129398
end

endmodule