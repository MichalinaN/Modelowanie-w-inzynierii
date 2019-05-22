%%
clear all; close all; clc;
%ferryt=0.02
%austenit=0.67
temp=800+273;
Q=140000;
R=8.3144;
d=0.000041;
D=d*exp(-Q/(R*temp))*1E10;
dt=1;
dx=0.8;
c=[10 10];
for r=1:1:2
    for h=1:1:10
        c(h,r)=0.67;
    end
end

for k=3:1:10
    c(1,k)=0.02
end

for n=2:1:10
    for m=3:1:10
    
        c(n,m)=(1-2*D*dt/(dx*dx))*c(n-1,m)+(D*dt/(dx*dx)).*(c(n,m-2)+c(n,m-1))

    end
end
