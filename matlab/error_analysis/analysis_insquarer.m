clc;
clear;
Rmin=1.0; Rmax=2.0;
n=200000;
x=[4 8 12 16];
R=Rmin+rand(1,n)*(Rmax-Rmin);
Rt=1./(R.^2);
for i=1:1:n
apprx_k4(i)=part_4_insqr(R(i));
apprx_k8(i)=part_8_insqr(R(i));
apprx_k12(i)=part_12_insqr(R(i));
apprx_k16(i)=part_16_insqr(R(i));
end

for i=1:1:n
   err_k4(i)=((Rt(i)-apprx_k4(i)));
   err_k8(i)=((Rt(i)-apprx_k8(i)));
   err_k12(i)=((Rt(i)-apprx_k12(i)));
   err_k16(i)=((Rt(i)-apprx_k16(i)));
   rerr_k4(i)=(err_k4(i)/Rt(i))*100;
   rerr_k8(i)=(err_k8(i)/Rt(i))*100;
   rerr_k12(i)=(err_k12(i)/Rt(i))*100;
   rerr_k16(i)=(err_k16(i)/Rt(i))*100;
end

mae4=sum(err_k4);
mae8=sum(err_k8);
mae12=sum(err_k12);
mae16=sum(err_k16);
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

function out=part_4_insqr(in)
if(in<1.1459)
out=0.872672413;
elseif(in<1.339205)
out=0.651635086;
elseif(in<1.605975)
out=0.464956872;
else
out=0.311336476;
end
end

function out=part_8_insqr(in)
if(in<1.088245)
out=0.918906315;
elseif(in<1.18934)
out=0.772618999;
elseif(in<1.301895)
out=0.645827106;
elseif(in<1.423835)
out=0.539464387;
elseif(in<1.55328)
out=0.45215686;
elseif(in<1.68983)
out=0.380983259;
elseif(in<1.83621)
out=0.322280035;
else
out=0.272299298;
end
end
function [out]=part_12_insqr(in)
if(in<1.06681)
out=0.9373695;
elseif(in<1.14071)
out=0.821742414;
elseif(in<1.22036)
out=0.718348097;
elseif(in<1.304085)
out=0.628354043;
elseif(in<1.390135)
out=0.551614291;
elseif(in<1.476995)
out=0.487037589;
elseif(in<1.563585)
out=0.433010123;
elseif(in<1.64939)
out=0.387751775;
elseif(in<1.73455)
out=0.349533282;
elseif(in<1.81996)
out=0.316774425;
elseif(in<1.90745)
out=0.288060579;
else
out=0.262129398;
end
end
function out=part_16_insqr(in)
if(in<1.053725)
out=0.949009587;
elseif(in<1.111895)
out=0.853506695;
elseif(in<1.17344)
out=0.766431653;
elseif(in<1.237195)
out=0.688809539;
elseif(in<1.302105)
out=0.62074628;
elseif(in<1.367345)
out=0.561660987;
elseif(in<1.43239)
out=0.510574429;
elseif(in<1.496985)
out=0.466358383;
elseif(in<1.561005)
out=0.427934043;
elseif(in<1.624395)
out=0.394368935;
elseif(in<1.687125)
out=0.36488817;
elseif(in<1.74921)
out=0.338851587;
elseif(in<1.81082)
out=0.315705062;
elseif(in<1.87244)
out=0.294927743;
elseif(in<1.935005)
out=0.275999857;
else
out=0.258396608;
end
end






