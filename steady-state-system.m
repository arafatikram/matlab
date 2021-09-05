clc; close all; clear all;
tau1=1;
tau2=0;
%----------------------------------------------------------------
% Controller, G1(s) and Graphical Output
%----------------------------------------------------------------
K2=100;
num=[tau1 1];      % define tau of numerator of Controller
K1=6;
num1=K2*num;      % define numerator of Controller
dent1=[tau2 1];    % define denominator of Controller
T1=tf(num1, dent1);  % create transfer function of Controller
num2=K1;        % define numerator of G1(s)
dent2=[1 0 0];     % define denominator of G1(s)
T2=tf(num2, dent2);   % create transfer function of G1(s)
G=T1*T2;
T=feedback(G,1);
figure
[y1, t1] = step(T);
step(T);       % graphical representation of step response
figure
plot(t1, 1-y1);    % graphical representation of steady-state error for a step input
title('Steady-State Error of the System for a Step Input');
xlabel('Time (sec)');
ylabel('Error');
num3=1;            % define numerator of input signal
dent3=[1 0];     % define denominator of input signal
T3=tf(num3, dent3);    % create transfer function of input signal
figure
[y2, t2] = step(T*T3);
step(T*T3);             % graphical representation of ramp response
title('Ramp Response');
figure
plot(t2, t2-y2);      % graphical representation of steady-state error for a ramp input
title('Steady-State Error of the System for a Ramp Input');
xlabel('Time (sec)');
ylabel('Error');