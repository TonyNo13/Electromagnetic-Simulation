clc;clear;close all;
epsilon0 = 1/(36*pi)*10^(-9);
n = 2;
epsilon = n*epsilon0;
mu = 4*pi*10^(-7);
sigma = 0;
eta = sqrt(mu/epsilon);
w = 1;
phiE = 0;
phiH = 0;
Em = 1;
Hm = Em/eta;
z = zeros(100);
t = linspace(0,10*pi,100);
Ex = Em*cos(w*t+phiE);
Hy = Hm*cos(w*t+phiH);

while 1
    for i=1:98
        plot3(t(i:i+1),Ex(i:i+1),z(i:i+1),'r')
        grid on
        axis([0 30 -1 1 -0.01 0.01]);
        hold on
        plot3(t(i:i+1),z(i:i+1),Hy(i:i+1),'b')
        hold on
        title('��Ų�����������д������ӻ�');
        xlabel('��������');
        ylabel('y����');
        zlabel('x����');
        pause(0.03)
    end
    clf
end
