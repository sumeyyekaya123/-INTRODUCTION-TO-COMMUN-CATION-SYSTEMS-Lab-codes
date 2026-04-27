clc
clear
close all

Fs = 100;
t = 0:1/Fs:1;

x1 = sin(2*pi*20*t);

N1 = length(x1);
X1 = fftshift(fft(abs(x1)));
f1 = linspace(-Fs,Fs,N1);
M1 = abs(X1)/max(abs(X1));

figure
subplot(2,1,1)
plot(t,x1)
grid on
title('Question 1 Time Domain')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(2,1,2)
plot(f1,M1)
grid on
title('Question 1 Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

[m1,i1] = max(M1);
disp('Question 1 Output')
disp(['Peak frequency = ',num2str(f1(i1)),' Hz'])
disp(['Peak magnitude = ',num2str(m1)])


t2 = 0:1/Fs:2;

x2 = exp(2*t2).*cos(2*pi*200*t2);
x2 = x2/max(abs(x2));

N2 = length(x2);
X2 = fftshift(fft(abs(x2)));
f2 = linspace(-Fs,Fs,N2);
M2 = abs(X2)/max(abs(X2));

figure
subplot(2,1,1)
plot(t2,x2)
grid on
title('Question 2 Time Domain')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(2,1,2)
plot(f2,M2)
grid on
title('Question 2 Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

[m2,i2] = max(M2);
disp('Question 2 Output')
disp(['Peak frequency = ',num2str(f2(i2)),' Hz'])
disp(['Peak magnitude = ',num2str(m2)])


t3 = -1:1/Fs:1;
T = 0.2;

x3 = zeros(size(t3));

for k = 1:length(t3)
    if t3(k) >= -T && t3(k) <= T
        x3(k) = 2;
    else
        x3(k) = 0;
    end
end

N3 = length(x3);
X3 = fftshift(fft(t3));
f3 = linspace(-Fs,Fs,N3);
M3 = abs(X3)/max(abs(X3));

figure
subplot(2,1,1)
plot(t3,x3)
grid on
title('Question 3 Time Domain')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(2,1,2)
plot(f3,M3)
grid on
title('Question 3 Frequency Domain')
xlabel('Frequency (Hz)')
ylabel('Magnitude')

[m3,i3] = max(M3);
disp('Question 3 Output')
disp(['Peak frequency = ',num2str(f3(i3)),' Hz'])
disp(['Peak magnitude = ',num2str(m3)])