module k_16_sqrt(input [15:0]in,input en,output [15:0]out,output done);
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
if(in[9:0]<10'b0001000100)	//1.06651
Rt=10'b0000010000;	//1.016448864
else if(in[9:0]<10'b0010001000)	//1.13366
Rt=10'b0000110001;	//1.048809846
else if(in[9:0]<10'b0011001101)	//1.20073
Rt=10'b0001010010;	//1.080331985
else if(in[9:0]<10'b0100010001)	//1.267215
Rt=10'b0001110001;	//1.110810678
else if(in[9:0]<10'b0101010100)	//1.33284
Rt=10'b0010001111;	//1.140158313
else if(in[9:0]<10'b0110010111)	//1.39756
Rt=10'b0010101100;	//1.168391447
else if(in[9:0]<10'b0111011000)	//1.46144	
Rt=10'b0011001000;	//1.195593168
else if(in[9:0]<10'b1000011001)	//1.52459
Rt=10'b0011100011;	//1.22186818
else if(in[9:0]<10'b1001011001)	//1.58705
Rt=10'b0011111101;	//1.247305198
else if(in[9:0]<10'b1010011000)	//1.648775	
Rt=10'b0100010110;	//1.271953591
else if(in[9:0]<10'b1011010110)	//1.70964
Rt=10'b0100101110;	//1.29582562
else if(in[9:0]<10'b1100010011)	//1.769495
Rt=10'b0101000110;	//1.318911328
else if(in[9:0]<10'b1101010000)	//1.828255
Rt=10'b0101011101;	//1.341207482
else if(in[9:0]<10'b1110001011)	//1.88601
Rt=10'b0101110011;	//1.362753675
else if(in[9:0]<10'b1111000101)	//1.94308
Rt=10'b0110001000;	//1.383658938
else
Rt=10'b0110011101;	//1.404104078
end

always@(*)
begin
op1=Rt>>2'b01;
op2=Rt>>2'b11;
op3=Rt>>3'b101;
adder_o=Rt+op1+op2+op3;
end

endmodule