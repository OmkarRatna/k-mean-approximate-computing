clc;
clear;
k=16;size_total=200000;
m=1;n=0; error=5;
for i=1:1:size_total
    m=m+(1/size_total);     % x values precision upto 5*10e-6
    n=n+(1/size_total);     %1/(1+x) --> R   
    x(i)=n;
    %R(i)=1/(m);
   %R(i)=sqrt(m);
   %R(i)=log(m);
   %R(i)=1/m.^2;
   R(i)=m.^2;
end
xt=R;
%index=min_error(R,mt,error);    % first partitoing assuming apprx 1-x with error less than 5%
%xt=R(index+1:size_total);       %xt is new range of i/p for new partitioning
l=size(xt,2);
l=floor(l/k);                   %initial centroid from midpoint of total partition
r=zeros(1,k);
for i=1:1:k
    r(i)=i*l;
end
r=sort(r);
c=xt(r);
for i=1:1:25
 indx=cost_fn(xt,c);            %partitioning using k-mean clustering
 c=compute_centroid(xt,indx,k);
end

[new_index]=partition_range(indx,size_total,k);
new_index=(1+new_index).';
c=c.';
% index=index*(1/size_total);
% new_index=[index,new_index];        %output is partitioning index(k+1 partition) 
                                    %and new centroid(approximation)
