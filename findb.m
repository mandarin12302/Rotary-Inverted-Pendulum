function [B]  = findb(Lr,Lp)
%
m1=0.127;       %Pendulum length
g=9.81;         %gravity
I1=0.0009983;   %Rotational arm moment of inertia
I2=0.0012;      %Pendulum moment of inertia
br = 0.0024;    %Equivalent arm viscous damping coefficient
bp = 0.0024;    %Equivalent pendulum viscous damping coefficient
l1=0.2159;      %Rotational arm length
l2=0.33655;     %Pendulum length
lr=Lr;lp=Lp;
Ir=I1*(lr/l1)^2;Ip=I2*(lp/l2)^2;
% m0 = I1/l1^2;
G = 1/((Ir + m1*lr^2)*(Ip + 1/4*m1*lp^2)-1/4*m1^2*lr^2*lp^2);

A = [0,0,1,0;
    0,0,0,1;
    0,1/4*G*m1^2*g*lr*lp^2,-G*br*(Ip+1/4*m1*lp^2),-1/2*G*m1*lp*lr*br;
    0,1/2*G*m1*g*lp*(Ir+m1*lr^2),-1/2*G*m1*lp*lr*br,-G*bp*(Ir+m1*lr^2)];
B = [0;0;G*m1*(Ip + 1/4*m1*lp^2);1/2*G*m1^2*lp*lr];%*c1*c2
C = [1,0,0,0;0,1,0,0;0,0,1,0;0,0,0,1];
D = [0;0;0;0];