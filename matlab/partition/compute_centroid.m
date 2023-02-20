function [new_centroid]=compute_centroid(xt,index,k)
new_centroid=zeros(1,k);
for i=1:1:k
	temp=find(index==i);
	xtemp=xt(temp);
	new_centroid(i)=((sum(xtemp))./length(xtemp));
end
end