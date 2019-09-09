% Multiple input multiple output (MIMO) control of linearized (x0) cart-pole system using pole placement.
% Author: Kaivalya Bakshi

clc
clear all

tspan = [0 20];
x0 = [-0.5 2.05 0.3 0.45];

[t, x] = ode45(@cartPoleLinCtrl, tspan, x0);