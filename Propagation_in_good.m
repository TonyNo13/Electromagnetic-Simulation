clc;clear;close all;
epsilon0 = 1/(36*pi)*10^(-9);
n = 2;
epsilon = n*epsilon0;
mu = 4*pi*10^(-7);
sigma = 10^(-18);
alpha = sigma/2*sqrt(mu/epsilon);
eta = sqrt(mu/epsilon);
w = 1;
phiE = 0;
phiH = pi/4;
Em = 1;
Hm = Em/eta;
z = zeros(100);
t = linspace(0,10*pi,100);
Ex = Em*exp(-0.07*t).*cos(w*t+phiE);
Hy = Hm*exp(-0.07*t).*cos(w*t+phiH);

while 1
    for i=1:98
        plot3(t(i:i+1),Ex(i:i+1),z(i:i+1),'r')
        grid on
        axis([0 30 -0.9 0.9 -0.004 0.004]);
        hold on
        plot3(t(i:i+1),z(i:i+1),Hy(i:i+1),'b')
        hold on
        title('电磁波在良导体传播可视化');
        xlabel('传播方向');
        ylabel('y分量');
        zlabel('x分量');
        pause(0.03)
    end
    clf
end
