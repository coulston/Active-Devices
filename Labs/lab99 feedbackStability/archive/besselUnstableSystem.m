%% ----------------------------------------------------------------
%% Author:  Chris Coulston
%% Date:    Spring 2024
%% Purp:    Pole Zero for Bessel designed in Analog Filter Wizard
%% daycounter polynomial   
%% G1 = s2 + 2.7192s + 2.01424257
%% G2 = s2 + 1.9754s + 2.53205705 
%% ----------------------------------------------------------------
clear all;
s = tf('s');

w_corner = 1000*6.28;

w_n1 = sqrt(2.01)*w_corner;
zeta1 = 2.72/2.84;       %% Zeta is normalized in daycounter to 1rad/sec

w_n2 = sqrt(2.53)*w_corner;
zeta2 = 1.98/3.18;       %% Zeta is normalized in daycounter to 1rad/sec

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



