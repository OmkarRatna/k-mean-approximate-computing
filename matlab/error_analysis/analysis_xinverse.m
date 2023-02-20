clc;
clear;
Rmin=1.0; Rmax=2.0;
n=200000;
x=[4 8 12 16];
R=Rmin+rand(1,n)*(Rmax-Rmin);
Rt=1./R;
for i=1:1:n
apprx_k4(i)=part_4(R(i));
apprx_k8(i)=part_8(R(i));
apprx_k12(i)=part_12(R(i));
apprx_k16(i)=part_16(R(i));
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
mae_k4=sum(abs(err_k4))/n;
mae_k8=sum(abs(err_k8))/n;
mae_k12=sum(abs(err_k12))/n;
mae_k16=sum(abs(err_k16))/n;

t=tiledlayout(2,2);
t.TileSpacing = 'compact';
t.Padding = 'compact';
nexttile;
histogram(rerr_k4,'normalization','probability');
title('K=4');
ytix = get(gca, 'YTick');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
xlim([-10,10]);
set(gca,'FontSize',20)
grid on
grid minor
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',20)
set(k_lab,'FontSize',20)
nexttile;
histogram(rerr_k8,'normalization','probability');
title('K=8');
ytix = get(gca, 'YTick');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
xlim([-10,10]);
set(gca,'FontSize',20)
grid on
grid minor
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',20)
set(k_lab,'FontSize',20)
nexttile;
histogram(rerr_k12,'normalization','probability');
title('K=12');
ytix = get(gca, 'YTick');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
xlim([-10,10]);
set(gca,'FontSize',20)
grid on
grid minor
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',20)
set(k_lab,'FontSize',20)
nexttile;
histogram(rerr_k16,'normalization','probability');
title('K=16');
ytix = get(gca, 'YTick');
set(gca, 'YTick',ytix, 'YTickLabel',ytix*100)
xlim([-10,10]);
set(gca,'FontSize',20)
grid on
grid minor
h_lab=xlabel('Error(%)');
k_lab=ylabel('Frequency(%)');
set(h_lab,'FontSize',20)
set(k_lab,'FontSize',20)

%...............K=2.....................
function [out]=part_2(in)
if(in<1.7143)
out=0.7546;
else
out=0.5395;
end
end

%..............k=4..............
function[out]=part_4(in)
if(in<1.17517)
out=0.921461696;
elseif(in<1.391555)
out=0.781055425;
elseif(in<1.660545)
out=0.656990014;
else
out=0.547940267;
end
end

%.........k=6................
function[out]=part_6(in)
if(in<1.244)
out=0.8946;
elseif(in<1.4118)
out=0.7540;
elseif(in<1.5789)
out=0.6694;
elseif(in<1.746)
out=0.602;
elseif(in<1.913)
out=0.547;
else
out=0.5112;
end
end

%.........k=8.............
function[out]=part_8(in)
if(in<1.10165)
out=0.95237408;
elseif(in<1.21387)
out=0.864412201;
elseif(in<1.334235)
out=0.785480042;
elseif(in<1.46)
out=0.716242042;
elseif(in<1.589005)
out=0.656342463;
elseif(in<1.72055)
out=0.604628475;
elseif(in<1.85616)
out=0.559440485;
else
out=0.518890755;
end
end
%............k=10................
function[out]=part_10(in)
if(in<1.1478)
out=0.9326;
elseif(in<1.248)
out=0.8533;
elseif(in<1.3481)
out=0.7708;
elseif(in<1.4483)
out=0.7155;
elseif(in<1.5484)
out=0.6677;
elseif(in<1.6485)
out=0.6258;
elseif(in<1.7486)
out=0.5899;
elseif(in<1.8486)
out=0.5561;
elseif(in<1.9487)
out=0.5268;
else
out=0.5065;
end
end
%.......k=12...............
function [out]=part_12(in)
if(in<1.074255)
out=0.964611478;
elseif(in<1.154)
out=0.897944814;
elseif(in<1.23767)
out=0.836575418;
elseif(in<1.32362)
out=0.781148299;
elseif(in<1.41036)
out=0.731778505;
elseif(in<1.49677)
out=0.688165256;
elseif(in<1.582125)
out=0.64974913;
elseif(in<1.66615)
out=0.615847853;
elseif(in<1.748995)
out=0.585740726;
elseif(in<1.831315)
out=0.558708534;
elseif(in<1.91435)
out=0.53403736;
else
out=0.511021427;
end

end

%............k=14................................
function[out]=part_14(in)
if(in<1.1060)
out=0.9505;
elseif(in<1.1775)
out=0.8761;
elseif(in<1.249)
out=0.8245;
elseif(in<1.3204)
out=0.7786;
elseif(in<1.3919)
out=0.7375;
elseif(in<1.4634)
out=0.7006;
elseif(in<1.5349)
out=0.6672;
elseif(in<1.6063)
out=0.6368;
elseif(in<1.6778)
out=0.6091;
elseif(in<1.7492)
out=0.5837;
elseif(in<1.8207)
out=0.5603;
elseif(in<1.8921)
out=0.5387;
elseif(in<1.9636)
out=0.5188;
else
out=0.5046;
end
end
%................k-16.....................
function out= part_16(in)
if(in<1.05842)
out=0.971877646;
elseif(in<1.12012)
out=0.918289501;
elseif(in<1.184015)
out=0.868225408;
elseif(in<1.24906)
out=0.822199295;
elseif(in<1.314425)
out=0.780355537;
elseif(in<1.37956)
out=0.742537964;
elseif(in<1.444195)
out=0.708399227;
elseif(in<1.50823)
out=0.677514351;
elseif(in<1.571625)
out=0.649471902;
elseif(in<1.63435)
out=0.623913827;
elseif(in<1.696345)
out=0.600543734;
elseif(in<1.75755)
out=0.579116183;
elseif(in<1.818045)
out=0.559400063;
elseif(in<1.87812)
out=0.541148308;
elseif(in<1.93843)
out=0.524076424;
else
out=0.507857297;
end
end
