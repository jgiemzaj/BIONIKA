% W osobnym pliku model_matematyczny_sis.m zapisujemy
% poni¿sz¹ funkcjê
% Równanie modelu SIS - osobniki zainfekowane
function [I] = model_matematyczny_sis(t, arg,alfa,beta,gamma)

% Równanie ró¿niczkowe (4.55)
I = -beta*arg^2 + (beta - (alfa + gamma))*arg;