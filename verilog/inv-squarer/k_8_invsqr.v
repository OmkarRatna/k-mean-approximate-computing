module k_8_invsqr(input [15:0]in, input clk, output [15:0]out);
wire [4:0] ea,exponent;
reg [9:0] Rt;
assign ea=(in[14:10]-5'd15)<<1'b1;
assign exponent=5'd15-ea;
assign out={1'b0,exponent,Rt};

always @(posedge clk)
begin
if(in[9:2]<8'b00010110)	//1.088245
Rt=10'b1110101100; //0.918906315
else if(in[9:2]<8'b00110000) //1.18934
Rt=10'b1100010111; //0.772618999
else if(in[9:2]<8'b01001101) //1.301895
Rt=10'b1010010101; //0.645827106
else if(in[9:2]<8'b01101100)	//1.423835
Rt=10'b1000101000; //0.539464387
else if(in[9:2]<8'b10001101) //1.55328
Rt=10'b0111001111; //0.45215686
else if(in[9:2]<8'b10110000) //1.68983
Rt=10'b0110000110; //0.380983259
else if(in[9:2]<8'b11010110) //1.83621
Rt=10'b0101001010; //0.322280035
else
Rt=10'b0100010110; //0.272299298
end

endmodule