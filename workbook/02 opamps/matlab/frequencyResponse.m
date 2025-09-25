%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Chris Coulston      Spring 2025    Colorado School of Mines 
% EENG 385  Devices
% A mathematical description of a Sallen Key LPF.  Equations 
% from https://en.wikipedia.org/wiki/Sallen%E2%80%93Key_topology
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
s = tf('s');

R1_1 = 68e3;       
R2_1 = 100e3;        
C1_1 = 100e-9;
C2_1 = 22e-9;

omega1 = 1/sqrt(R1_1*R2_1*C1_1*C2_1);
alpha1 = (R1_1+R2_1)/(C1_1*R1_1*R2_1);

T1 = omega1^2/(s^2 + alpha1*s + omega1^2);

R1_2 = 150e3;       
R2_2 = 330e3;        
C1_2 = 100e-9;
C2_2 = 680e-12;

omega2 = 1/sqrt(R1_2*R2_2*C1_2*C2_2);
alpha2 = (R1_2+R2_2)/(C1_2*R1_2*R2_2);

T2 = omega2^2/(s^2 + alpha2*s + omega2^2);

bode(T1*T2)

