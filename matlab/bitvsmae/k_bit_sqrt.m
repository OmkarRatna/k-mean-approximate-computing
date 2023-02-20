clc;
clear;

A=[0.230825 0.47544 0.73195];
    


n=[4,6,8,10,12];%no of bits 

nr4=bit_range_decision(A,n(1));  %find new range with respect to no of bits are availble
nr6=bit_range_decision(A,n(2));
nr8=bit_range_decision(A,n(3));
nr10=bit_range_decision(A,n(4));
nr12=bit_range_decision(A,n(5));
%nr14=bit_range_decision(A,n(6));

for i=1:1:size(A,2)
    err4(i)=(abs(nr4(i)-A(i))/A(i));
    err6(i)=(abs(nr6(i)-A(i))/A(i));
    err8(i)=(abs(nr8(i)-A(i))/A(i));        %relative error between original range and new range
    err10(i)=(abs(nr10(i)-A(i))/A(i));
    err12(i)=(abs(nr12(i)-A(i))/A(i));
   % err14(i)=(abs(nr14(i)-A(i))/A(i));
end

mae4=sum(err4);
mae6=sum(err6);
mae8=sum(err8);
mae10=sum(err10);
mae12=sum(err12);
%mae14=sum(err14);

mae_k4=[mae4 mae6 mae8 mae10 mae12];

A=[0.126895 0.25637 0.385945 0.51367 0.638465 0.760295 0.88017];


%nr3=bit_range_decision(A,n(1));
nr4=bit_range_decision(A,n(1));
nr6=bit_range_decision(A,n(2));
nr8=bit_range_decision(A,n(3));
nr10=bit_range_decision(A,n(4));
nr12=bit_range_decision(A,n(5));
%nr14=bit_range_decision(A,n(6));


for i=1:1:size(A,2)
    %err3(i)=(abs(nr3(i)-A(i))/A(i));
    err4(i)=(abs(nr4(i)-A(i))/A(i));
    err6(i)=(abs(nr6(i)-A(i))/A(i));
    err8(i)=(abs(nr8(i)-A(i))/A(i));
    err10(i)=(abs(nr10(i)-A(i))/A(i));
    err12(i)=(abs(nr12(i)-A(i))/A(i));
    %err14(i)=(abs(nr14(i)-A(i))/A(i));
end
%mae3=sum(err3);
mae4=sum(err4);
mae6=sum(err6);
mae8=sum(err8);
mae10=sum(err10);
mae12=sum(err12);
%mae14=sum(err14);
mae_k8=[mae4 mae6 mae8 mae10 mae12];

A=[0.087565 0.17639 0.265355 0.353535 0.44032 0.525345 0.60843 0.689545 0.768805 0.846525 0.9233];
nr4=bit_range_decision(A,n(1));
nr6=bit_range_decision(A,n(2));
nr8=bit_range_decision(A,n(3));
nr10=bit_range_decision(A,n(4));
nr12=bit_range_decision(A,n(5));
%nr14=bit_range_decision(A,n(6));

for i=1:1:size(A,2)
    err4(i)=(abs(nr4(i)-A(i))/A(i));
    err6(i)=(abs(nr6(i)-A(i))/A(i));
    err8(i)=(abs(nr8(i)-A(i))/A(i));
    err10(i)=(abs(nr10(i)-A(i))/A(i));
    err12(i)=(abs(nr12(i)-A(i))/A(i));
    %err14(i)=(abs(nr14(i)-A(i))/A(i));
end

mae4=sum(err4);
mae6=sum(err6);
mae8=sum(err8);
mae10=sum(err10);
mae12=sum(err12);
%mae14=sum(err14);

mae_k12=[mae4 mae6 mae8 mae10 mae12];

A=[0.06651 0.13366 0.20073 0.267215 0.33284 0.39756 0.46144 0.52459 0.58705 0.648775 0.70964 0.769495 0.828255 0.88601 0.94308];


nr4=bit_range_decision(A,n(1));
nr6=bit_range_decision(A,n(2));
nr8=bit_range_decision(A,n(3));
nr10=bit_range_decision(A,n(4));
nr12=bit_range_decision(A,n(5));
%nr14=bit_range_decision(A,n(6));

for i=1:1:size(A,2)
    err4(i)=(abs(nr4(i)-A(i))/A(i));
    err6(i)=(abs(nr6(i)-A(i))/A(i));
    err8(i)=(abs(nr8(i)-A(i))/A(i));
    err10(i)=(abs(nr10(i)-A(i))/A(i));
    err12(i)=(abs(nr12(i)-A(i))/A(i));
    %err14(i)=(abs(nr14(i)-A(i))/A(i));
end

mae4=sum(err4);
mae6=sum(err6);
mae8=sum(err8);
mae10=sum(err10);
mae12=sum(err12);
%mae14=sum(err14);

mae_k16=[mae4 mae6 mae8 mae10 mae12];
t=tiledlayout(1,1);
t.TileSpacing='compact';
t.Padding='compact';
nexttile;
plot(n,mae_k4,'-ro',n,mae_k8,'-bo',n,mae_k12,'-ko',n,mae_k16,'-mo','linewidth',2.0);
xlabel('No of bits');
ylabel('MAE');
set(gca,'FontSize',20)
grid on
grid minor
legend({'k=4','k=8','k=12','k=16'},'fontsize',32);