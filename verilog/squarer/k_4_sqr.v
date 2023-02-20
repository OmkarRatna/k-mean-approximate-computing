module k_4_sqr(input [15:0] in,input clk,output [15:0] out);
wire [4:0] ea,exponent;
reg [9:0] Rt;
reg [1:0] const;
assign ea=(in[14:10]-5'd15)<<1'b1;
assign exponent=ea+const+5'd15;
assign out={1'b0,exponent,Rt};
always@(posedge clk)
begin
if(in[9:4]<6'b010011)  //0.299009
begin
Rt<=10'b0101010000;	//1.328914
const<=2'b00;
end
else if(in[9:4]<6'b100011) //0.5571005
begin
Rt<=10'b0000101110;	//2.045017
const<=2'b01;
end
else if(in[9:4]<6'b110010) //0.788135
begin
Rt<=10'b1100110101;	//2.802114
const<=2'b01;
end
else
begin
Rt<=10'b1001011101;	//3.591242
const<=2'b10;
end
end

endmodule
