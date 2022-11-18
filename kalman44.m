%% kalman filter through prediction and correction equations 
A=1;
B=0;
H=1;
R=0.5;
t=1;
yk(1)=z(1);
for i=1:500
    yk(i+1)=A*yk(i)+t*u(i); 
    V=A*V;
    
    k=V*H/((V*H+R));
    yk(i+1)=yk(i+1)+k*(z(i)-(H*yk(i+1)));
    V=(1-(k*H))*V;
end
figure (2);
plot (yk,'k')
title ('Filtered Position Data')
    