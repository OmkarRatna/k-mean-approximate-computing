module k_8_divider(input [15:0]in1,in2,input clk,en, output [15:0]out,output reg done);
reg [9:0] Rt;
reg [21:0] mul_o;

wire [5:0] exponent;
assign exponent=(in1[14:10]-in2[14:10])+4'd15;
assign out={1'b0,exponent,mul_o[20:11]};


always@(*)
begin
if(in2[9:2]<8'b00011010)			//x<1.10165
Rt<=10'b1111001111;			//0.95237408
else if(in2[9:2]<8'b00110110)		//x<1.21387
Rt<=10'b1101110101;			//0.864412201
else if(in2[9:2]<8'b01010101)		//x<1.334235
Rt<=10'b1100100100;			//0.785480042	
else if(in2[9:2]<8'b01110101)			//x<1.46
Rt<=10'b1011011101;			//0.716242042
else if(in2[9:2]<8'b10010110)		    //x<1.589005
Rt<=10'b1010100000;			//0.656342463
else if(in2[9:2]<8'b10111000)			//x<1.72055
Rt<=10'b1001101011;			//0.604628475
else if(in2[9:2]<8'b11011011)			//x<1.85616
Rt<=10'b1000111100;			//0.559440485
else 
Rt<=10'b1000010011;			//0.518890755
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
	mul_o=21'd0;
	done=1'b0;
end
end

endmodule