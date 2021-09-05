clc %clear command window
clear all %clear workspace variable
n=0:100; %appointing n's value between 0 to 100

subplot(2,2,1); %2 by 2 subplot and 1st position
a=0.95; %declaring a's value between 0<a<1
y=a.^n; %dot used for element-by-element powers, a is scaler, n is vactor
plot(n,y, 'm') %continuos / plotting / megenta color
xlabel('Time'); %naming X-axis
ylabel('Amplitude'); %naming Y-axis
title('When 0<a<1'); %naming the plot
legend('Exponentially decaying'); %naming the signal

subplot(2,2,2); %2 by 2 subplot and 2nd  position
b=-0.95; %declaring b's value between -1<a<0
y1=b.^n; %dot used for element-by-element powers, b is scaler, n is vactor
stem(n,y1, 'b') %discrete / plotting / blue color
xlabel('Time'); %naming X-axis
ylabel('Amplitude'); %naming Y-axis
title('When -1<a<0'); %naming the plot
legend('Oscillation decaying'); %naming the signal

subplot(2,2,3); %2 by 2 subplot and 3rd position
c=1.05; %declaring c's value between 1<a<2
y2=c.^n; %dot used for element-by-element powers, c is scaler, n is vactor
stem(n,y2, 'g') %discrete / plotting / green color
xlabel('Time'); %naming X-axis
ylabel('Amplitude'); %naming Y-axis
title('When 1<a<2'); %naming the plot
legend('Exponentially Growing'); %naming the signal

subplot(2,2,4); %2 by 2 subplot and 4th position
d=-1.04; %declaring d's value between -2<a<-1
y2=d.^n; %dot used for element-by-element powers, d is scaler, n is vactor
plot(n,y2, 'r') %continuous / plotting / red color
xlabel('Time'); %naming X-axis
ylabel('Amplitude'); %naming Y-axis
title('When -2<a<-1'); %naming the plot
legend('Oscillation Growing'); %naming the signal