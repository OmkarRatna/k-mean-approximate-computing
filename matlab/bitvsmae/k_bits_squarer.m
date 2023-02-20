clc;
clear;

A=[0.29909 0.55711 0.78814];


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

A=[0.1592 0.3045 0.43883 0.56408 0.68168 0.7928 0.89856];
   
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

A=[0.10381 0.20158 0.29451 0.38352 0.46930 0.55233 0.63283 0.7109 0.78655 0.85981 0.93086];
    
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

A=[0.07602 0.14861 0.21829 0.28559 0.35103 0.41508 0.47812 0.54037 0.6019 0.66262 0.72232 0.78077 0.83776 0.89321 0.94722];
    

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