%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Chris Coulston      Summer 2025    Colorado School of Mines 
% EENG 385  Devices
% Properties of the Low Pass Filter on the PID controller board
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
s = tf('s');
T1 =  66810/(s^2 + 247*s + 66810);
T2 = 297100/(s^2 + 97*s + 297100);
bode(T1*T2);        waitforbuttonpress;
nyquist(T1*T2);     waitforbuttonpress;
margin(T1*T2);      waitforbuttonpress;

nyquist(0.82*T1*T2)