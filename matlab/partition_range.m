function [b] = partition_range(indx,size_total,k)
b=zeros(1,k);
for i=1:1:k
   for j=1:1:size(indx,2) 
   if(indx(j)==i)
       temp=j;
   end
   end
  
   b(i)=(temp).*(1/size_total);
end
end