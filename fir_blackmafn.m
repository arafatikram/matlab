clc
close all
clear all
format long

N = input('Type in the window lengh = ');
bm = blackman(N);
disp('Window Coefficients');
disp(bm);
[h,omega] = freqz(bm,1,256);
mag = 20*log10(abs(h));
plot(omega/pi,mag,'r');grid;
xlabel('Normalized Frequency (\omega/\pi)');
ylabel('Gain, dB');
