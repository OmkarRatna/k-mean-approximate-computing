module k_4_divider(input [15:0]in1,in2,input clk,en, output [15:0]out,output reg done);
reg [9:0] Rt;
reg [21:0] mul_o;

wire [4:0] exponent;
assign exponent=(in1[14:10]-in2[14:10])+4'd15;

assign out={1'b0,exponent,mul_o[20:11]};


always@(*)
begin
if(in2[9:4]<6'b001011)			//x<1.17517
Rt<=10'b1110101111;		//0.921461696
else if(in2[9:4]<6'b011001)		//x<1.391555
Rt<=10'b1100011111;		//0.781055425
else if(in2[9:4]<6'b101010)		//x<1.660545
Rt<=10'b1010100000;		//0.656990014
else
Rt<=10'b1000110001;		//0.547940267
end

always@(posedge clk)
begin
	if(en)
	begin	
		mul_o={1'b1,in1[9:0]}*{1'b0,Rt};
		done=1'b1;
	end
	else
	begin
		mul_o=22'd0;
		done=1'b0;
	end	
end

endmodule
