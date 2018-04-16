% W osobnym pliku model_matematyczny_sis.m zapisujemy
% poni�sz� funkcj�
% R�wnanie modelu SIS - osobniki zainfekowane
function [I] = model_matematyczny_sis(t, arg,alfa,beta,gamma)

% R�wnanie r�niczkowe (4.55)
I = -beta*arg^2 + (beta - (alfa + gamma))*arg;