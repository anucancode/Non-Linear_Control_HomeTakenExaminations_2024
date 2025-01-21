clear all
clc

% constants
K0 = 40;
K1 = 12;
% matrices
A = [0 1; -K0 -K1];
Q = eye(2);

% solving the Lyapunov equation A^T*P + P*A + Q = 0
P = lyap(A', Q);

% solution
disp('The matrix P is:');
disp(P);