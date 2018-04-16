% W osobnym pliku model_matematyczny_sirs.m zapisujemy
% poni¿sz¹ funkcjê
function [rezultat] = model_matematyczny_sirs(t, arg,alfa,beta,lambda) 

rezultat(1) = -beta*arg(1)*arg(2) + alfa*arg(3);
rezultat(2) = beta*arg(1)*arg(2) - lambda*arg(2);
rezultat(3) = lambda*arg(2) - alfa*arg(3);
rezultat = rezultat'