clc;
clear;
Rmin=1.0; Rmax=2.0;
n=200000;
x=[4 8 12 16];
R=Rmin+rand(1,n)*(Rmax-Rmin);

%................DIVISION..........................................
Rt=1./R;
for i=1:1:n
apprx_k4(i)=part_4_div(R(i));
apprx_k8(i)=part_8_div(R(i));
apprx_k12(i)=part_12_div(R(i));
apprx_k16(i)=part_16_div(R(i));
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

mae_div=[mae_k4 mae_k8 mae_k12 mae_k16];
%......................END...................................

%....................SQUARE ROOT.............................
Rt=sqrt(R);
for i=1:1:n
%apprx_k2(i)=part_2(R(i));
apprx_k4(i)=part_4_sqrt(R(i));
%apprx_k6(i)=part_6(R(i));
apprx_k8(i)=part_8_sqrt(R(i));
%apprx_k10(i)=part_10(R(i));
apprx_k12(i)=part_12_sqrt(R(i));
%apprx_k14(i)=part_14(R(i));
apprx_k16(i)=part_16_sqrt(R(i));
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
mae_sqrt=[mae_k4 mae_k8 mae_k12 mae_k16];

%......................END.............................

%.....................SQUARER..........................
Rt=R.^2;
for i=1:1:n
apprx_k4(i)=part_4_sqr(R(i));
apprx_k8(i)=part_8_sqr(R(i));
apprx_k12(i)=part_12_sqr(R(i));
apprx_k16(i)=part_16_sqr(R(i));
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
mae_sqr=[mae_k4 mae_k8 mae_k12 mae_k16];
%...............END...........................

%............INVERSE SQUARER..................
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

mae_k4=sum(abs(err_k4))/n;
mae_k8=sum(abs(err_k8))/n;
mae_k12=sum(abs(err_k12))/n;
mae_k16=sum(abs(err_k16))/n;
mae_insqr=[mae_k4 mae_k8 mae_k12 mae_k16];
%.................END.......................
t=tiledlayout(1,1);
t.TileSpacing='compact';
t.Padding='compact';
nexttile;
plot(x,mae_div,'-bo',x,mae_sqrt,'-ro',x,mae_sqr,'-mo',x,mae_insqr,'-ko','linewidth',2.0);
xlabel('no of partions(k)');
ylabel('MAE');
set(gca,'FontSize',20)
grid on
grid minor
legend({'division','square-root','squarer','inverse-squarer'},'fontsize',32);

%.......................FUNCTIONS.......................................
%..............k=4..............
function[out]=part_4_div(in)
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
%.........k=8.............
function[out]=part_8_div(in)
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
%.......k=12...............
function [out]=part_12_div(in)
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
%................k-16.....................
function out= part_16_div(in)
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
function out=part_4_sqrt(in)
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

function out=part_8_sqrt(in)
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



function [out]=part_12_sqrt(in)
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

function out=part_16_sqrt(in)
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

function out=part_4_sqr(in)
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

function out=part_8_sqr(in)
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

function [out]=part_12_sqr(in)
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

function out=part_16_sqr(in)
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
