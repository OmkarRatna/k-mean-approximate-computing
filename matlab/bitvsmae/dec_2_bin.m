clc;
clear;
A=[0.949009587 0.853506695 0.766431653 0.688809539 0.62074628 0.561660987 0.510574429 0.466358383 0.427934043 0.394368935 0.36488817 0.338851587 0.315705062 0.294927743 0.275999857 0.258396608];
B=zeros(size(A,2),10);
for i=1:1:size(A,2)
    B(i,:)=dec_bin(A(i),1,10);
end
function [out]=dec_bin(in,p,q)
    m=fix(in);
    in2=in-m;
    for i=p:-1:1
      if(m>=0)
        op1(i)=rem(m,2);                  %intger part converts to binary
        m=floor(m/2);
      end
    end  
    
    for i=1:1:q
        temp=in2*2;
        int_part=fix(temp);              %fractional part converts to binary   
        op2(i)=int_part;
        in2=temp-int_part;
    end    
        out=op2;              %concatination of intger and fraction part
end