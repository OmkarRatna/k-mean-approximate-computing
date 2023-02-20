module k_8_sqr(input [15:0] in,input clk,output [15:0] out);
wire [4:0] ea,exponent;
reg [9:0] Rt;
reg [1:0] const;
assign ea=(in[14:10]-5'd15)<<1'b1;
assign exponent=ea+const+5'd15;
assign out={1'b0,exponent,Rt};
always@(posedge clk)
begin
if(in[9:2]<8'b00101000) //1.1592
begin
Rt<=10'b0010101011;	//1.167653611
const<=2'b00;
end
else if(in[9:2]<8'b100011) //1.3045
begin
Rt<=10'b1000010011;	 //1.519219923
const<=2'b00;
end
else if(in[9:2]<8'b01001101) //1.438825
begin
Rt<=10'b1110001000;	//1.882968473
const<=2'b00;
end
else if(in[9:2]<8'b01110000) //1.56408
begin
Rt<=10'b0100000101; //2.255674518
const<=2'b01;
end
else if(in[9:2]<8'b10010000) //1.681675
begin
Rt<=10'b1010001010; //2.634891876
const<=2'b01;
end
else if(in[9:2]<8'b10101110) //1.7928
begin
Rt<=10'b0000010011; //3.019031881
const<=2'b10;
end
else if(in[9:2]<8'b11001010) //1.898555
begin
Rt<=10'b0110100001; //3.407466672
const<=2'b10;
end
else
begin
Rt<=10'b1100110011; //3.800550109
const<=2'b10;
end
end

endmodule