function [index]=cost_fn(xt,c)
centroid=c;
index=zeros(1,size(xt,2));
for i=1:1:size(xt,2)
	idx=zeros(1,size(c,2));
	for j=1:1:size(c,2)
		idx(j)=sqrt((sum(power((xt(i)-centroid(j)),2))).*1/size(xt,2));
        %idx(j)=abs(xt(i)-centroid(j));
    end
	[d,id]=min(idx);
	index(i)=id;
end
end