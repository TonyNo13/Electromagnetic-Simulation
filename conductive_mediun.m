clc;clear;close all;
Gamma = -0.6;
tau = 0.4;
Em = 1;
w = 3000;
phii = 0;
phir = 0;
phit = 0;
x = linspace(31.4,31.5,10000);
y = linspace(-1,1,10000);
t = linspace(0,10*pi,1000);
Ei = Em*cos(w*t+phii);
Er = Em*Gamma*cos(w*t+phir);
Et = Em*tau*cos(w*(t+15)+phit);
xlabel('传播方向');
ylabel('振动方向');
title('对导电媒质的分界面的垂直入射');
hold on;
plot(t,Ei);
hold on;
plot(t,Er);
hold on;
plot(t+31.4,Et);
hold on;
plot(x,y,'ko');
hold on;
legend('入射波','反射波','透射波');
hold on;
