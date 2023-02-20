module k_12_divider(input [15:0]in1,in2,input clk,en, output [15:0]out,output reg done);
reg [9:0] Rt;
reg [21:0] mul_o;
wire [4:0] exponent;
assign exponent=(in1[14:10]-in2[14:10])+4'd15;
assign out={1'b0,exponent,mul_o[20:11]};


always@(*)
begin
if(in2[9:0]<10'b0001001100)			//1.074255
Rt<=10'b1111011011;	//0.964611478		
else if(in2[9:0]<10'b0010011101)	//1.154	
Rt<=10'b1110010111;	//0.897944814		
else if(in2[9:0]<10'b0011110011)	//1.23767	
Rt<=10'b1101011000;	//0.836575418			
else if(in2[9:0]<10'b0101001011)	//1.32362		
Rt<=10'b1100011111;	//0.781148299		
else if(in2[9:0]<10'b0110100100)	//1.41036	    
Rt<=10'b1011101101;	//0.731778505		
else if(in2[9:0]<10'b0111111100)	//1.49677		
Rt<=10'b1011000000;	//0.688165256		
else if(in2[9:0]<10'b1001010100)	//1.582125		
Rt<=10'b1010011001;	//0.64974913
else if(in2[9:0]<10'b1010101010)	//1.66615
Rt<=10'b1001110110;	//0.615847853
else if(in2[9:0]<10'b1011111110)	//1.748995
Rt<=10'b1001010111;	//0.585740726
else if(in2[9:0]<10'b1101010011)	//1.831315
Rt<=10'b1000111100;	//0.558708534
else if(in2[9:0]<10'b1110101000)	//1.91435
Rt<=10'b1000100010;	//0.53403736
else 
Rt<=10'b1000001011;	//0.511021427			
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
	mul_o=22'd0;
	done=1'b0;
end

end

endmodule