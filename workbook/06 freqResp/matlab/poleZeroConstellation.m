%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Chris Coulston
%% Summer 2025
%% Bode plot of arbitrary pole/zero constellations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
s = tf('s');


%% High Pass Filter
% define the coordinates of the pole/zero constellation
p1 =  1j - 1;
p2 = -1j  - 1;
z1 = 0;
z2 = 0;

% define the transfer function that has this constellation
G = ((s-z1)*(s-z2))/((s-p1)*(s-p2));

% plot it!
bodePlot = bodeplot(G);
opts = getoptions(bodePlot);
opts.Title.String = 'High Pass Filter';
setoptions(bodePlot,opts);
waitforbuttonpress();


%% Low Pass Filter
% define the coordinates of the pole/zero constellation
p1 = -1j - 1;
p2 = 1j - 1;

% define the transfer function that has this constellation
G = 1/((s-p1)*(s-p2));

% plot it!
bodePlot = bodeplot(G);
opts = getoptions(bodePlot);
opts.Title.String = 'Low Pass Filter';
setoptions(bodePlot,opts);
waitforbuttonpress();

%% Phase Shifter
% define the coordinates of the pole/zero constellation
p1 = 100j - 1;
z1 = 100j + 1;

% define the transfer function that has this constellation
G = (s-z1)/(s-p1);

% plot it!
bodePlot = bodeplot(G);
opts = getoptions(bodePlot);
opts.Title.String = 'Phase Shifter';
setoptions(bodePlot,opts);
waitforbuttonpress();

%% Bandpass Filter
% define the coordinates of the pole/zero constellation
p1 = 101j - 1;
p2 = 99j  - 1;
z1 = 0;

% define the transfer function that has this constellation
G = (s-z1)/((s-p1)*(s-p2));

% plot it!
bodePlot = bodeplot(G);
opts = getoptions(bodePlot);
opts.Title.String = 'Bandpass Filter';
setoptions(bodePlot,opts);
waitforbuttonpress();


%% Arb #1
% define the coordinates of the pole/zero constellation
p1 = 99j - 1;
p2 = 101j - 1;
z1 = 100j;

% define the transfer function that has this constellation
G = (s-z1)/((s-p1)*(s-p2));

% plot it!
bodePlot = bodeplot(G);
opts = getoptions(bodePlot);
opts.Title.String = 'Arb #1';
setoptions(bodePlot,opts);
waitforbuttonpress();

%% Arb #2
% define the coordinates of the pole/zero constellation
z1 = 100j;
p1 = 0;

% define the transfer function that has this constellation
G = (s-z1)/(s-p1);

% plot it!
bodePlot = bodeplot(G);
opts = getoptions(bodePlot);
opts.Title.String = 'Arb #2';
setoptions(bodePlot,opts);
waitforbuttonpress();
