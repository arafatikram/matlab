clc
clear all

subplot(2,1,1); %for 2nd row, 1st col, 1st position
s = 0:1/500:(5*(.5/15))-1/500; %5 period in 1 second, and sampling rate 0.5khz of 15hz fundamental freq/
x = sawtooth(2*pi*50*s);
plot(s,x,'r');
xlabel('Time');
ylabel('Amplitude');
title('Sawtooth Wave');

subplot(2,1,2);  % for 2nd row, 1st col, 2nd position
T = 15*(1/60);   % 15 peeriod in 1 second
fs = 1500;       % fundamental freq
t = 0:1/fs:T-1/fs; % sampling rate 0.5khz of 60hz fundamental freq/
D=0.5;             % duty cycle 50%
y = sawtooth(2*pi*60*t,D); % function to draw tringular with duty cycle
plot(t,y,'g');   % plotiing function
xlabel('Time');  % show x-axes title
ylabel('Amplitude'); %show y-exes title
title('Tringular Wave');
