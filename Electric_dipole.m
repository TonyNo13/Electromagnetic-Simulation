clc;clear;close all;
syms x y                 %  ����x��y������
for C=0:0.1:5.0
   ezplot((x+1)/sqrt((x+1)^2+y^2)-(x-1)/sqrt((x-1)^2+y^2)-C, [- 5,5,0.1]);
   title("��ż���ӵĵ糡�ֲ�");
   grid on
   hold on;
end
