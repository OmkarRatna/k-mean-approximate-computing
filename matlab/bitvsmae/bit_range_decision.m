function [new_range]=bit_range_decision(A,n)
j=1; range=zeros(size(A,2),n);
new_range=zeros(1,size(A,2));
for i=1:1:size(A,2)
    op=dec_2_bin(A(1,i),1,n);
    range(j,:)=op;
    j=j+1;
end

for i=1:1:size(A,2)
    new_range(i)=bin_2_dec(range(i,:));    
end
end
%...................decimal to binary..........................
function [out]=dec_2_bin(in,p,q)
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

function [out]=bin_2_dec(in)
out=0;
for i=1:1:size(in,2)
    out=out+(in(i)*2^(-i));
end
end
