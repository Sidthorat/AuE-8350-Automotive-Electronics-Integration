clc;
load speed.mat
x(1)=0;
S=std(u);    %% "standard deviation syntax S = std(A)"
for i=1:(length(u)-1) 
    x(i+1)=x(i)+1*u(i);
end
figure (2)
plot (x,'b')
title('Vehicle Positions')
xlabel('Time')
ylabel('Vehicle position')


