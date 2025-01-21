%%
clc
clear all
%%
% parameters
g = 9.8; % Acceleration due to gravity in m/s^2
l = 0.7; % Length of the pendulum in meters
m = 0.2; % Mass of the pendulum in kg
b = 0.1; % Damping coefficient in Nms/rad
%%
% symbolic variables
syms x1 x2;
%%
% Define the system equations
f1 = x2;
f2 = (-b/m*l^2)*x2 - (g/l)*sin(x1);
%f2 = (-(b*x2) - (m*g*l*sin(x1))) / (m*(l^2));
%%
% jacobian matrix
J = jacobian([f1, f2], [x1, x2])
%%
% Evaluating Jacobian at the equilibrium points (0,0) and (0, pi)
J_at_0_0 = subs(J, {x1, x2}, {0, 0})
J_at_0_pi = subs(J, {x1, x2}, {pi,0})
%%
% eigenvalues for each Jacobian matrix
eigenvalues_at_0 = (vpa(eig(J_at_0_0)))
eigenvalues_at_pi = (vpa(eig(J_at_0_pi)))

%%
sim('sim2')