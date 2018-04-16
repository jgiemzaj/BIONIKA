% W osobnym pliku model_matematyczny_sirs.m zapisujemy
% poni¿sz¹ funkcjê
function [rezultat] = model_matematyczny_si(t, arg,gamma,c) 
r=(2*(gamma*c)) /((arg(1)+arg(2))^2)
rezultat(1) = -r*arg(1)*arg(2);
rezultat(2) = r*arg(1)*arg(2);


rezultat = rezultat'