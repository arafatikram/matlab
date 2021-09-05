clc %clear command window
clear all %clear variable/workspace
x=0:0.05:3; % declaring x's range with 0.05 sample rate

%Sine Wave
subplot(2,2,1); %2 by 2 subplot and 1st position
y=sin(2*pi*x); %math function for Sinewave
stem(x,y,'r'); %Discrete plotting x and y / red color
xlabel('Time'); %renaming x axis
ylabel('Amplitde'); %renaming y axis
title('Discrete Sin Wave'); %renaming plot title

%Cosine Wave
subplot(2,2,2);  % 2 by 2 subplot and 2nd position
y1=cos(2*pi*x); %math function for cos wave
stem(x,y1,'m'); %Discrete plotting x and y2 / magenta color
xlabel('Time'); %renaming x axis
ylabel('Amplitde'); %renaming y axis
title('Discrete Cos Wave'); %renaming plot title

%exponentially growing signal
subplot(2,2,3); % 2 by 1 subplot and 3rd position
x1=0:0.2:8; %(0 < x1 < 10), sample rate 0.1
g=0.5; %positive value for growing 
y2=exp(g*x1); %exponential math function
stem(x1,y2,'m'); %Discrete plotting x1 and y2, magenta color
xlabel('Time');%renaming x axis
ylabel('Amplitde'); %renaming y axis
title('Discrete Exponentially Growing ');%renaming plot title

%exponentially decaying signal
subplot(2,2,4); % 2 by 1 subplot and 4th position
d=-0.6; % negetive value for decaying
y3=exp(d*x1); %exponential math function
stem(x1,y3,'r'); %Discrete plotting x1 and y3
xlabel('Time');%renaming x axis
ylabel('Amplitde'); %renaming y axis
title('Discrete Exponentially Decaying');%renaming plot title