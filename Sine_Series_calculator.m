clc 
clear
m=input('Number of Harmonics: '); %storing input data in variable m 
 f=inline('(4/(a*pi))*sin(2*pi*a*x)'); %storing a common equation format 
 %in variable f, using inline function
 x=0:0.001:2; %declaring rang and sample value of x
 y=0; %creating new varible y
 
 for n=1:2:m %starting foor loop where n's range is 1 to m. 
     %and each sample difference is 2
     y=y+f(n,x); %basic calculation and storing data in y
 end %end of statement
plot(x, y,'r', 'linewidth', 3); %plotting using x and y's data
%plot color is red and line width is 3