%% This main function code for the whole simulation of PID
%  The structure of the code is:
%      (1) Defining Parameters 
%      (2) Calculating the System matrix (A,B,C,D) for simulink
%      (3) Run the main first, then run the simulink
%
% Yimeng LI 5306469
% Delft University of Technology
% e-mail: Y.Li-87@student.tudelft.nl
%
% Version May 19, 2022
%     First upload version 
% ---------------------------------------------------


l1=0.2159;%length of the rotational arm
l2=0.33; %length of the pendulum (range for l2[0.1,0.4])


A0=finda(l1,l2);
B0=findb(l1,l2);
C0=findc(l1,l2);
D0=findd(l1,l2);