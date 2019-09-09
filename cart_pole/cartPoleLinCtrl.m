function xdot = cartPoleLinCtrl(t, x)
% MIMO controlled cart-pole outputs using pole placement

xdot = zeros(4,1);

m = 1;
M = 2;
g = 9.81;
l = 0.25;

A = [0 1 0 0; 0 0 -m*g/M 0; 0 0 0 1; 0 0 (M + m)*g/M/l 0];
B = [0; 1/M; 0; -1/M/l];
p1 = [-1 -2 -3 -4];
K = place(A, B, p1);

xdot = (A - B*K)*x;

end