load gps.mat
clc;
t=1:500;
figure (1)
plot (t,z,'k')
title ( 'Variance Of The Noise')
xlabel('time')
ylabel('vehicle position')
L=1:length(z);
p=polyfit(L,z,1);  %% Syntax of polyfit (p)=polyfit(x,y,n)
p_v=polyval(p,L);
variance=var(p_v)