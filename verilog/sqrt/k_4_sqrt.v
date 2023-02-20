module k_4_sqrt(input [15:0]in,input clk,en,output [15:0]out,output done);
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
always @(posedge clk)
begin
if(in[9:3]<7'b0011101)
Rt=10'b0000111000;
else if(in[9:3]<7'b0111100)
Rt=10'b0010100110;
else if(in[9:3]<7'b1011101)
Rt=10'b0100010000;
else
Rt=10'b0101110110;
end

always@(*)
begin
op1=Rt>>2'b01;
op2=Rt>>2'b11;
op3=Rt>>3'b101;
adder_o=Rt+op1+op2+op3;
end

endmodule
