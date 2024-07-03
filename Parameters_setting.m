% DC_MOTOR
% RATED VALUES
%Power 3.08 Kw
%Max speed 3000RPM
%Max Voltage 140V
% Parameter
clear all;
clc; 
Ra=1;
La=1e-3;
Ke=0.6;
Kt=0.6;
J=0.1; % Motor and Load
B=0.029; % Motor and Load
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ge=tf(1,[La Ra]);
Gm=tf(1,[J B]);
G=Ge*Gm*Ke;
Gfb=zpk(feedback(Ge*Gm*Kt,Ke));
pzmap(Gfb,G)
proyecto_automation

