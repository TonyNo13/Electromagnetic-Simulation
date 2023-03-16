clc;clear;close all;
Exm = 1;
Eym = 1;
w = 1;
faix = pi/2;
faiy = 0;
k = 1;
z = zeros(100);
t = linspace(0,10*pi,100);
Ex = Exm*cos(w*t+faix);
Ey = Eym*cos(w*t+faiy);
Em = sqrt(Exm*Exm+Eym*Eym);
a = atan(Eym/Exm);
E = Em*cos(w*t+a);
while 1
    for i=1:98
        plot3(t(i:i+1),Ex(i:i+1),z(i:i+1),'r')
        grid on
        axis([0 30 -1 1 -1 1]);
        hold on
        plot3(t(i:i+1),z(i:i+1),Ey(i:i+1),'b')
        hold on
        plot3(t(i:i+1),Ex(i:i+1),Ey(i:i+1),'g')
        hold on
        title('右旋圆极化波可视化');
        xlabel('传播方向');
        ylabel('y分量');
        zlabel('x分量');
        pause(0.03)
    end
    clf
end
