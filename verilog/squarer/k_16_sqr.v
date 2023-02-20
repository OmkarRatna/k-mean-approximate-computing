module k_16_sqr(input [15:0] in,input clk,output [15:0] out);
wire [4:0] ea,exponent;
reg [9:0] Rt;
reg [1:0] const;
assign ea=(in[14:10]-5'd15)<<1'b1;
assign exponent=ea+const+5'd15;
assign out={1'b0,exponent,Rt};

always@(posedge clk)
begin
if(in<10'b0001001101) //1.07602
begin
Rt=10'b0001001111; //1.077951537
const=2'b00;
end
else if(in<10'b0010011000) //1.148605
begin
Rt=10'b0011110011; //1.237683708
const=2'b00;
end
else if(in<10'b0011011111) //1.218285
begin
Rt=10'b0110011010; //1.400952594
const=2'b00;
end
else if(in<10'b0100100100) //1.28559
begin
Rt=10'b1001000101; //1.567731261
const=2'b00;
end
else if(in<10'b0101100111) //1.35103
begin
Rt=10'b1011110100; //1.738304714
const=2'b00;
end
else if(in<10'b0110101001) //1.41508
begin
Rt=10'b1110100111; //1.913189915
const=2'b00;
end
else if(in<10'b0111101001) //1.478115
begin
Rt=10'b0001011111; //2.092982678
const=2'b01;
end
else if(in<10'b1000101001) //1.54037
begin
Rt=10'b0100011100; //2.278143444
const=2'b01;
end
else if(in<10'b1001101000) //1.6019
begin
Rt=10'b0111100000; //2.468788539
const=2'b01;
end
else if(in<10'b1010100110) //1.662615
begin
Rt=10'b1010101000;//2.6645799
const=2'b01;
end
else if(in<10'b1011100011) //1.72232
begin
Rt=10'b1101110101; //2.864751758
const=2'b01;
end
else if(in<10'b1100011111) //1.78077
begin
Rt=10'b0001000101; //3.068203345
const=2'b10;
end
else if(in<10'b1101011001) //1.83776
begin
Rt=10'b0100011000; //3.273719542
const=2'b10;
end
else if(in<10'b1110010010) //1.893215
begin
Rt=10'b0111101011; //3.480309212
const=2'b10;
end
else if(in<10'b1111001001) //1.94722
begin
Rt=10'b1010111111; //3.687487893
const=2'b10;
end
else
begin
Rt=10'b1110010100; //3.895378444
const=2'b10;
end
end
endmodule