% System of linear equations
clear,clc;

syms a b c d e;
equ = [e/a==0.5,e+c==6,12+3*b==2*c+2*d,6+2*a==0.5*c+d+2*e,b==0.25*c];

answ = solve(equ,[a,b,c,d,e])

%% ODE systems

clear,clc;

k1 = 0.2;
k2 = 0.1;
k3 = 0.1;
kd1 = 0.1;
kd2 = 0.15;
% range of time: 30h
t0 = 0;
tf = 10;
tspan = [t0, tf];

% ODE system
% dy1/dt = k1*y1-kd1*y1-k2*y1*y2;
% dy2/dt = -kd2*y2+k3*y1*y2;


% Let y1 = y(1), y2 = y(2)
f = @(t,y) [k1*y(1)-kd1*y(1)-k2*y(1)*y(2);-kd2*y(2)+k3*y(1)*y(2)];

% initial conditions
y0 = [10,1];
[t45, y45] = ode45(f,tspan,y0);
hsysterm=plot(t45,y45);
legend('algae population','zooplankton population');
% set(gca,'xtick',0:2:30);
set(gca,'xminortick','on');
ax = gca;
ax.XAxis.MinorTickValues = 0:0.5:10;
