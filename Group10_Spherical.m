disp('Spherical_1')
syms a1 a2 a3
%% Spherical

%% Link lengths

a1 = 5;
a2 = 2;
a3 = 2;

%% Joint Variables

d3 = 3;

%% D-H Parameters [theta, d, r, alpha, offset]

H1 = Link([0,a1,0,pi/2,0,0]);
H1.qlim = [-pi/2 pi/2];

H2 = Link([0,0,0,pi/2,0,pi/2]);
H2.qlim = [-pi/2 pi/2];

H3 = Link([0,0,0,0,1,a2+a3]);
H3.qlim = [0 d3];


Spherical_1 = SerialLink([H1 H2 H3], 'name', 'Spherical_1');
Spherical_1.plot([0 0 0], 'workspace', [-10 10 -10 10 0 10])
Spherical_1.teach
