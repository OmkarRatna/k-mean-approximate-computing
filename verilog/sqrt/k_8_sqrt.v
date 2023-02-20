module k_8_sqrt(input [15:0]in,input en,output [15:0]out,output done);
reg [9:0] adder_o;
reg [4:0] exponent;
reg odd_expo;
reg [9:0] Rt,op1,op2,op3;
wire [4:0] exp_in;
wire [9:0] mantissa;
assign exp_in=in[14:10]-5'd15;
assign mantissa=(odd_expo)?adder_o:Rt;
assign out={1'b0,exponent,mantissa};
assign done=en;

always@(*)
begin
if(exp_in[0]==0)
begin
	exponent=(exp_in>>1'b1)+5'd15;
	odd_expo=1'b0;
end
else
begin
	exponent=({exp_in[4:1],1'b0}>>1'b1)+5'd15;
	odd_expo=1'b1;
end
end
always @(*)
begin
if(in[9:2]<8'b00100000)	//1.126895
Rt=10'b0000011111;	//1.031084071
else if(in[9:2]<8'b01000001)	//1.25637
Rt=10'b0001011101;	//1.09148604
else if(in[9:2]<8'b01100010)	//1.385945
Rt=10'b0010011000;	//1.149302022
else if (in[9:2]<8'b10000011)	//1.51367
Rt=10'b0011010000;	//1.203983182
else if(in[9:2]<8'b10100011)	//1.638465
Rt=10'b0100000101;	//1.255334252
else if(in[9:2]<8'b11000010)	//1.760295
Rt=10'b0100110110;	//1.303533851
else if(in[9:2]<8'b11100001)	//1.88017
Rt=10'b0101100101;	//1.349099885
else
Rt=10'b0110010010;	//1.392814877
end

always@(*)
begin
op1=Rt>>2'b01;
op2=Rt>>2'b11;
op3=Rt>>3'b101;
adder_o=Rt+op1+op2+op3;
end

endmodule