close all;
clear all;
M=dlmread('signal_05_1.txt');X1=M(:,1);X2=M(:,2);
%X1=load('signal_05_1.txt',);
%X2=load('signal_05_1.txt',2);
load('coef.mat');
for i=1:11
    a(i)=Den(i);
    b(i)=Num(i);
end
%a=load('coef.mat','Den');
%b=load('coef.mat','Num');
tmax=1.25;
Fd=500;
T=1/Fd;
N=length(X1);
t=0:T:tmax-T;
subplot(2,2,1)
plot(t,X1)
subplot(2,2,3)
plot(t,X2)
Y1=filter(b,a,X1);
Y2=filter(b,a,X2);
subplot(2,2,2)
plot(t,Y1)
subplot(2,2,4)
plot(t,Y2)
