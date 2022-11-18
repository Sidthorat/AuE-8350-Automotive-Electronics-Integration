clc;
load rawdata.mat
% time domain

fs=200
t= linspace(0,length(X)/fs,length(X));
figure(1);
plot(t,X)
title('time domain')
xlabel('time')
ylabel('amplitude')

% frequency domain

nfft=800;
f= linspace(0,fs,nfft);
X= abs(fft(X,nfft));
figure(2);
plot(f(1:nfft/2), X(1:nfft/2));
title('freq domain')
xlabel('freq')
ylabel('abs')


%%filter the data using low pass butterworth filter 

fc=10;
fs=200;
n_order=6; %filter order
[b,a]=butter(n_order,fc/(fs/2))
figure(3);
plot(f(1:nfft/2), X(1:nfft/2));
title('freq domain')
xlabel('freq')
ylabel('abs')

%% filter the data using filter function

y = filter(b,a,X);
figure(4);
plot(t,X)
figure(5);
plot(t,y)
legend('Input Data','Filtered Data')
title('freq domain')
xlabel('time')
ylabel('amplitude')



