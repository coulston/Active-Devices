%% ----------------------------------------------------------------
%% Author:  Chris Coulston
%% Date:    Spring 2024
%% Purp:    Compare pole locations of 8th order filters
%% Requires Digital Signal Processing toolbox Home tab -> Add-Ons -> Get Add-Ons -> Digital Signal
%% ----------------------------------------------------------------
clear all;
s = tf('s');

[z,p,k] = besselap (4);
[num_bes,den_bes] = zp2tf(z,p,k);
bes = tf(num_bes,den_bes);


%% Convert pole locations of 4th order to polynomial

w_corner = 1400;

p1 = 1.121/((s - (-0.657 + 0.83i))*(s - (-0.657 - 0.83i)))
b1 = 1.314;
c1 = 1.121;
w_n1 = sqrt(c1)*w_corner;
zeta1 = b1/(2*sqrt(c1));

p2 = 0.8925/((s - (-0.905 + 0.271i))*(s - (-0.905 - 0.271i)))
b2 = 1.81;
c2 = 0.8925;
w_n2 = sqrt(c2)*w_corner;
zeta2 = b2/(2*sqrt(c2)); 

G1 = w_n1^2/(s^2 + 2*zeta1*w_n1*s + w_n1^2)
G2 = w_n2^2/(s^2 + 2*zeta2*w_n2*s + w_n2^2)

%% Should look like a low pass filter
bode(G1*G2);
waitforbuttonpress();

margin(G1*G2);
waitforbuttonpress();

step(feedback(G1*G2,1));
waitforbuttonpress();

margin(2*G1*G2);
waitforbuttonpress();

step(feedback(2*G1*G2,1));
waitforbuttonpress();

pzmap(bes, 'r');
legend('Bessel');
grid on;
waitforbuttonpress();

bode(bes, 'r');
legend('Bessel');
waitforbuttonpress();

margin(bes);
waitforbuttonpress();

step(feedback(bes,1));
waitforbuttonpress();

margin(2*bes);
waitforbuttonpress();

step(feedback(2*bes,1));
waitforbuttonpress();

