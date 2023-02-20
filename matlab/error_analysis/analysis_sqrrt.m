clc;
clear;
Rmin=1.0; Rmax=2.0;
n=200000;
x=[4 8 12 16];
R=Rmin+rand(1,n)*(Rmax-Rmin);
Rt=sqrt(R);
for i=1:1:n
%apprx_k2(i)=part_2(R(i));
apprx_k4(i)=part_4(R(i));
%apprx_k6(i)=part_6(R(i));
apprx_k8(i)=part_8(R(i));
%apprx_k10(i)=part_10(R(i));
apprx_k12(i)=part_12(R(i));
%apprx_k14(i)=part_14(R(i));
apprx_k16(i)=part_16(R(i));
end

for i=1:1:n
 %  err_k2(i)=((Rt(i)-apprx_k2(i)));
   err_k4(i)=((Rt(i)-apprx_k4(i)));
  % err_k6(i)=((Rt(i)-apprx_k6(i)));
   err_k8(i)=((Rt(i)-apprx_k8(i)));
   %err_k10(i)=((Rt(i)-apprx_k10(i)));
   err_k12(i)=((Rt(i)-apprx_k12(i))); 
   %err_k14(i)=((Rt(i)-apprx_k14(i))); 
   err_k16(i)=((Rt(i)-apprx_k16(i))); 
  % rerr_k2(i)=(err_k2(i)/Rt(i))*100;
   rerr_k4(i)=(err_k4(i)/Rt(i))*100;
  % rerr_k6(i)=(err_k6(i)/Rt(i))*100;
   rerr_k8(i)=(err_k8(i)/Rt(i))*100;
  % rerr_k10(i)=(err_k10(i)/Rt(i))*100;
   rerr_k12(i)=(err_k12(i)/Rt(i))*100;
  % rerr_k14(i)=(err_k14(i)/Rt(i))*100;
   rerr_k16(i)=(err_k16(i)/Rt(i))*100; 
end
%mae_k2=sum(abs(err_k2))/n;
mae_k4=sum(abs(err_k4))/n;
%mae_k6=sum(abs(err_k6))/n;
mae_k8=sum(abs(err_k8))/n;
%mae_k10=sum(abs(err_k10))/n;
mae_k12=sum(abs(err_k12))/n;
%mae_k14=sum(abs(err_k14))/n;
mae_k16=sum(abs(err_k16))/n;
figure,
mae=[mae_k4 mae_k8 mae_k12 mae_k16];
plot(x,mae,'-bo');
xlabel('partition k');
ylabel('mean absolute error');
title('MAE vs K for sqrt');

figure,
t=tiledlayout(2,2);
t.TileSpacing='compact';
t.Padding='compact';
nexttile;
histogram(rerr_k4,'normalization','probability');
ytix = get(gca, 'YTick');
title('k=4');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
set(gca,'FontSize',20)
grid on;
grid minor;
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',20)
set(k_lab,'FontSize',20)

nexttile;
histogram(rerr_k8,'normalization','probability');
ytix = get(gca, 'YTick');
title('k=8');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
set(gca,'FontSize',20)
grid on;
grid minor;
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',20)
set(k_lab,'FontSize',20)

nexttile;
histogram(rerr_k12,'normalization','probability');
ytix = get(gca, 'YTick');
title('k=12');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
set(gca,'FontSize',20)
grid on;
grid minor;
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',20)
set(k_lab,'FontSize',20)

nexttile;
histogram(rerr_k16,'normalization','probability');
ytix = get(gca, 'YTick');
title('k=16');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
set(gca,'FontSize',20)
grid on;
grid minor;
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',20)
set(k_lab,'FontSize',20)




function out=part_4(in)
if(in<1.230825)
out=1.055660016;
elseif(in<1.47544)
out=1.162846713;
elseif(in<1.73195)
out=1.266033896;
else
out=1.365713955;
end
end

function out=part_8(in)
if(in<1.126895)
out=1.031084071;
elseif(in<1.25637)
out=1.09148604;
elseif(in<1.385945)
out=1.149302022;
elseif(in<1.51367)
out=1.203983182;
elseif(in<1.638465)
out=1.255334252;
elseif(in<1.760295)
out=1.303533851;
elseif(in<1.88017)
out=1.349099885;
else
out=1.392814877;
end
end



function [out]=part_12(in)
if(in<1.087565)
out=1.021583043;
elseif(in<1.17639)
out=1.063877227;
elseif(in<1.265355)
out=1.104870993;
elseif(in<1.353535)
out=1.144256861;
elseif(in<1.44032)
out=1.181870406;
elseif(in<1.525345)
out=1.217675416;
elseif(in<1.60843)
out=1.251718101;
elseif(in<1.689545)
out=1.284097685;
elseif(in<1.768805)
out=1.314953157;
elseif(in<1.846525)
out=1.344469367;
elseif(in<1.9233)
out=1.372898338;
else
out=1.400567748;
end
end

function out=part_16(in)
if(in<1.06651)
out=1.016448864;
elseif(in<1.13366)
out=1.048809846;
elseif(in<1.20073)
out=1.080331985;
elseif(in<1.267215)
out=1.110810678;
elseif(in<1.33284)
out=1.140158313;
elseif(in<1.39756)
out=1.168391447;
elseif(in<1.46144)
out=1.195593168;
elseif(in<1.52459)
out=1.22186818;
elseif(in<1.58705)
out=1.247305198;
elseif(in<1.648775)
out=1.271953591;
elseif(in<1.70964)
out=1.29582562;
elseif(in<1.769495)
out=1.318911328;
elseif(in<1.828255)
out=1.341207482;
elseif(in<1.88601)
out=1.362753675;
elseif(in<1.94308)
out=1.383658938;
else
out=1.404104078;
end
end

