clc;
clear;

A=[0.1459 0.33920 0.60597];


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

A=[0.08824 0.18934 0.30189 0.42384 0.55328 0.68983 0.83621];
   
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

A=[0.06681 0.14071 0.22036 0.30409 0.39013 0.47699 0.56359 0.64939 0.73455 0.81996 0.90745];
    
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

A=[0.05372 0.11189 0.17344 0.2372 0.30211 0.36735 0.43239 0.49699 0.56101 0.62439 0.68713 0.74921 0.81082 0.87244 0.93501];
    

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