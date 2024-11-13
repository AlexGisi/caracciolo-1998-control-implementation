I = (1 / 12) * 590 * (1.38^2 + 1.52^2);
m = 550;
t = 0.6;
r = 0.3;
g = -9.8;
fr = 0.005;
a = 0.8;
b = 0.8;
mu = 0.9;
d0 = 0.5;  % must have d0 < a to prevent skidding

M = diag([m; m; I]);
M_inv = inv(M);

state0 = [0; 0; 0.2];

tau_max = 3.88*2;  % computed from big-step.csv warthog data and using 0.4635 as the wheel moment; doubled because there's two motors
tau_min = -tau_max;  
