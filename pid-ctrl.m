clc
clear all
close all
%% Motor Parameters and tf
J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.1;
s = tf('s');
P_motor = K/((J*s+b)*(L*s+R)+K^2);

%% Open loop Response
linearSystemAnalyzer('step',P_motor,0:0.1:5);

%% Propotional Controller and Response
Kp = 98;
C = pid(Kp);
sys_cl = feedback(C*P_motor,1);

 t = 0:0.01:5;
         step(sys_cl,t)
         grid
         title('Step Response with Proportional Control')
        
%% Control System Desing or sisotool
controlSystemDesigner(P_motor)

%% PID
Kp = 75;
Ki = 10;
Kd = 1;
C = pid(Kp,Ki,Kd);
sys_cl = feedback(C*P_motor,1);
step(sys_cl,[0:1:200])
title('PID Control with Small Ki and Small Kd')

%% Tuning the Gain
Kp = 75;
         Ki = 200;
         Kd = 1;
         C = pid(Kp,Ki,Kd);
         sys_cl = feedback(C*P_motor,1);
         step(sys_cl, 0:0.01:4)
         grid
         title('PID Control with Large Ki and Small Kd')
%% Kd 
Kp = 75;
         Ki = 200;
         Kd = 10;
         C = pid(Kp,Ki,Kd);
         sys_cl = feedback(C*P_motor,1);
         step(sys_cl, 0:0.01:4)
         grid
         title('PID Control with Large Ki and Large Kd')