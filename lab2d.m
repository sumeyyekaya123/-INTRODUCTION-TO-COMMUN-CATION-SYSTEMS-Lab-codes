clc
clear
close all

Fs = 100;
t = 0:1/Fs:2;

fm = 10;
fc = 40;

m = sin(2*pi*fm*t);
c = cos(2*pi*fc*t);
x = m + c;

N = length(t);
f = linspace(-Fs,Fs,N);

M = abs(fftshift(fft(abs(m))));
C = abs(fftshift(fft(c)));
X = abs(fftshift(fft(abs(x))));

M = M/max(M);
C = C/max(C);
X = X/max(X);

figure
subplot(3,2,1)
plot(t,m)
grid on
title('m(t) Time Domain')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(3,2,2)
plot(f,M)
grid on
title('m(t) Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

subplot(3,2,3)
plot(t,c)
grid on
title('c(t) Time Domain')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(3,2,4)
plot(f,C)
grid on
title('c(t) Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

subplot(3,2,5)
plot(t,x)
grid on
title('x(t) Time Domain')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(3,2,6)
plot(f,X)
grid on
title('x(t) Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

[mm,im] = max(M);
[mc,ic] = max(C);
[mx,ix] = max(X);

disp('Question 1 Output')
disp(['Message peak frequency = ',num2str(f(im)),' Hz'])
disp(['Carrier peak frequency = ',num2str(f(ic)),' Hz'])
disp(['Product signal peak frequency = ',num2str(f(ix)),' Hz'])


fm2 = 5;
fc2 = 40;
mu = 1.2;

xam = (1 + mu*sin(2*pi*fm2*t)).*cos(2*pi*fc2*t);

Nam = length(xam);
fam = linspace(-Fs,Fs,Nam);

Xam = abs(fftshift(fft(abs(xam))));
Xam = Xam/max(Xam);

figure
subplot(2,1,1)
plot(t,xam)
grid on
title('AM Signal Time Domain')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(2,1,2)
plot(fam,Xam)
grid on
title('AM Signal Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

[mam,iam] = max(Xam);

disp('Question 2 Output')
disp(['AM strongest frequency = ',num2str(fam(iam)),' Hz'])
disp(['Modulation index = ',num2str(mu)])
disp('Carrier and sidebands are shown in the frequency spectrum.')


fm3 = 5;
fc3 = 50;

xdsb = cos(2*pi*fm3*t).*cos(2*pi*fc3*t) + cos(2*pi*fc3*t);

Ndsb = length(xdsb);
fdsb = linspace(-Fs,Fs,Ndsb);

Xdsb = abs(fftshift(fft(xdsb)));
Xdsb = Xdsb/max(Xdsb);

figure
subplot(2,1,1)
plot(t,xdsb)
grid on
title('DSB-SC Signal Time Domain')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(2,1,2)
plot(fdsb,Xdsb)
grid on
title('DSB-SC Signal Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

[mdsb,idsb] = max(Xdsb);

disp('Question 3 Output')
disp(['DSB-SC strongest frequency = ',num2str(fdsb(idsb)),' Hz'])
disp('Carrier component does not appear in DSB-SC signal.')
disp('DSB-SC has only sidebands, while conventional AM has carrier and sidebands.')