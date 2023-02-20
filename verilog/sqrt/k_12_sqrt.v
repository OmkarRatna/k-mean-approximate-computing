module k_12_sqrt(input [15:0]in,input en,output [15:0]out,output done);
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
if(in[9:0]<10'b0001011001)	//1.087565
Rt=10'b0000010110;	//1.021583043
else if(in[9:0]<10'b0010110100)	//1.17639
Rt=10'b0001000001;	//1.063877227
else if(in[9:0]<10'b0100001111)	//1.265355
Rt=10'b0001101011;	//1.104870993
else if (in[9:0]<10'b0101101010)	//1.353535	
Rt=10'b0010010011;	//1.144256861
else if(in[9:0]<10'b0111000010)	//1.44032
Rt=10'b0010111010;	//1.181870406
else if(in[9:0]<10'b1000011001)	//1.525345
Rt=10'b0011011110;	//1.217675416
else if(in[9:0]<10'b1001101111)	//1.60843
Rt=10'b0100000001;	//1.251718101
else if(in[9:0]<10'b1011000010)	//1.689545
Rt=10'b0100100010;	//1.284097685
else if(in[9:0]<10'b1100010011)	//1.768805
Rt=10'b0101000010;	//1.314953157
else if(in[9:0]<10'b1101100010)	//1.846525
Rt=10'b0101100000;	//1.344469367
else if(in[9:0]<10'b1110110001)	//1.9233
Rt=10'b0101111101;	//1.372898338
else
Rt=10'b0110011010;	//1.400567748
end

always@(*)
begin
op1=Rt>>2'b01;
op2=Rt>>2'b11;
op3=Rt>>3'b101;
adder_o=Rt+op1+op2+op3;
end

endmodule