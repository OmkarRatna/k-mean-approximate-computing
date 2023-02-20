clc;
clear;
Rmin=1.0; Rmax=2.0;
n=200000;
x=[4 8 12 16];
R=Rmin+rand(1,n)*(Rmax-Rmin);
Rt=R.^2;
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

function out=part_4(in)
if(in<1.29909)
out=1.328914024;
elseif(in<1.557105)
out=2.045017255;
elseif(in<1.788135)
out=2.802113933;
else
out=3.59124173;
end
end

function out=part_8(in)
if(in<1.1592)
out=1.167653611;
elseif(in<1.3045)
out=1.519219923;
elseif(in<1.438825)
out=1.882968473;
elseif(in<1.56408)
out=2.255674518;
elseif(in<1.681675)
out=2.634891876;
elseif(in<1.7928)
out=3.019031881;
elseif(in<1.898555)
out=3.407466672;
else
out=3.800550109;
end
end

function [out]=part_12(in)
if(in<1.103815)
out=1.107412778;
elseif(in<1.201585)
out=1.329519635;
elseif(in<1.29451)
out=1.55834839;
elseif(in<1.38352)
out=1.793628097;
elseif(in<1.469305)
out=2.035273008;
elseif(in<1.552325)
out=2.283143878;
elseif(in<1.63283)
out=2.536851144;
elseif(in<1.7109)
out=2.79564884;
elseif(in<1.768805)
out=3.058515973;
elseif(in<1.85981)
out=3.324432626;
elseif(in<1.93086)
out=3.592724914;
else
out=3.863323274;
end
end

function out=part_16(in)
if(in<1.07602)
out=1.077951537;
elseif(in<1.148605)
out=1.237683708;
elseif(in<1.218285)
out=1.400952594;
elseif(in<1.28559)
out=1.567731261;
elseif(in<1.35103)
out=1.738304714;
elseif(in<1.41508)
out=1.913189915;
elseif(in<1.478115)
out=2.092982678;
elseif(in<1.54037)
out=2.278143444;
elseif(in<1.6019)
out=2.468788539;
elseif(in<1.662615)
out=2.66457991;
elseif(in<1.72232)
out=2.864751758;
elseif(in<1.78077)
out=3.068203345;
elseif(in<1.83776)
out=3.273719542;
elseif(in<1.893215)
out=3.480309212;
elseif(in<1.94722)
out=3.687487893;
else
out=3.895378444;
end
end

