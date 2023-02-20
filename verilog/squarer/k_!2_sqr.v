module k_12_sqr(input [15:0] in,input clk,output [15:0] out);
wire [4:0] ea,exponent;
reg [9:0] Rt;
reg [1:0] const;
assign ea=(in[14:10]-5'd15)<<1'b1;
assign exponent=ea+const+5'd15;
assign out={1'b0,exponent,Rt};

always@(posedge clk)
begin
if(in[9:2]<8'b00011010) //1.103815
begin
Rt=10'b0001101101; //1.107412778
const=2'b00;
end
else if(in[9:2]<8'b00110011) //1.201585
begin
Rt=10'b0101010001; //1.329519635
const=2'b00;
end
else if(in[9:2]<8'b01001011) //1.29451
begin
Rt=10'b1000111011; //1.55834839
const=2'b00;
end
else if(in[9:2]<8'b01100010) //1.38352
begin
Rt=10'b1100101100; //1.793628097
const=2'b00;
end
else if(in[9:2]<8'b01111000) //1.469305
begin
Rt=10'b0000100100; //2.035273008
const=2'b01;
end
else if(in[9:2]<8'b10001101) //1.552325
begin
Rt=10'b0100100001; //2.283143878
const=2'b01;
end
else if(in[9:2]<8'b10100010) //1.63283
begin
Rt=10'b1000100101; //2.536851144
const=2'b01;
end
else if(in[9:2]<8'b10110101) //1.7109
begin
Rt=10'b1100101110; //2.795648848
const=2'b01;
end
else if(in[9:2]<8'b11001001) //1.786545
begin
Rt=10'b0000111011; //3.058515973
const=2'b10;
end
else if(in[9:2]<8'b11011100) //1.85981
begin
Rt=10'b0101001100; //3.324432626
const=2'b10;
end
else if(in[9:2]<8'b11101110) //1.93086
begin
Rt=10'b1001011110; //3.592724914
const=2'b10;
end
else
begin
Rt=10'b1101110100;  //3.863323274
const=2'b10;
end
end
endmodule