% W osobnym pliku model_matematyczny_sir.m zapisujemy
% poni¿sz¹ funkcjê
% Równania modelu SIR - osobniki podatne i zainfekowane
function [rezultat] = model_matematyczny_sir(t, arg,lambda,beta)
% beta = 0.1; % wspó³czynnik zaka¿eñ
% lambda = 0.5; % wspó³czynnik (uodpornieñ) wyzdrowieñ
% uk³ad równañ ró¿niczkowych (4.65)
rezultat(1) = -beta*arg(1)*arg(2);
rezultat(2) = beta*arg(1)*arg(2) - lambda*arg(2);
rezultat = rezultat'

