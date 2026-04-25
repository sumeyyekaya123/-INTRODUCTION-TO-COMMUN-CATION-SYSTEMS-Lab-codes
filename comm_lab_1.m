%% Question 1
clear all;
clc;
f_0=10;%frequency of original function
t=0:0.00001:1;
x=cos(2*pi*f_0.*t);
figure;
plot(t,x);
%part b
X=fft(x);
figure;
plot(abs(X));
%part c
figure;
subplot(2,1,1);
plot(t,x);
subplot(2,1,2);
plot(abs(X));


%% Question 2
clear all;
clc;
%part a
t=0:0.00001:1;
x_2=exp(-2.*t).*cos(2*pi*2.*t);
plot(t,x_2);
%part b
X_2=fft(x_2);
figure;
plot(abs(X_2));
%part c
figure;
subplot(2,1,1);
plot(t,x_2);
subplot(2,1,2);
plot(abs(X_2));

%% Question 3
clear all;
clc
%part a
figure;
T=0.2;
t=-1:0.001:1;
x_3=abs(t)<=T/2;
plot(t,x_3);
%part b
figure;
X_3=fft(x_3);
plot(abs(X_3));
%part c
figure;
subplot(2,1,1);
plot(t,x_3);
subplot(2,1,2);
plot(abs(X_3));