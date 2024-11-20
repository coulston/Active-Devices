%% ----------------------------------------------------------------
%% Author:  Chris Coulston
%% Date:    Spring 2024
%% Purp:    Designed in Analog Filter Wizard
%%          Passband
%%              Gain = 0dB
%%          Stopband
%%              -3dB = 1kHz
%%              -40dB = 6kHz
%%          Filter Response 
%%              Butterworth
%%      4th order Bessel, 2 stages
%% ----------------------------------------------------------------
clear all;
s = tf('s');

R1_1 = 82e3;
R2_1 = 150e3;
C1_1 = 1.2e-9;
C2_1 = 1e-9;

w_n1 = 1/sqrt(R1_1*R2_1*C1_1*C2_1);
alpha_1 = (1/C1_1)*( (1/R1_1) + (1/R2_1) ) * (1/2);
zeta1 = alpha_1/w_n1; 

R1_2 = 12e3;
R2_2 = 27e3;
C1_2 = 10e-9;
C2_2 = 3.3e-9;

w_n2 = 1/sqrt(R1_2*R2_2*C1_2*C2_2);
alpha_2 = (1/C1_2)*( (1/R1_2) + (1/R2_2) ) * (1/2);
zeta2 = alpha_2/w_n2;

G1 = w_n1^2/(s^2 + 2*zeta1*w_n1*s + w_n1^2);
G2 = w_n2^2/(s^2 + 2*zeta2*w_n2*s + w_n2^2);


%% Should look like a low pass filter
pzmap(G1*G2)
waitforbuttonpress();

bode(G1*G2);
waitforbuttonpress();

margin(G1*G2);
waitforbuttonpress();

nyquist(G1*G2);
waitforbuttonpress();

step(feedback(G1*G2,1));
waitforbuttonpress();



