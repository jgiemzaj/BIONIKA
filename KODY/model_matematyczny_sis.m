function [I] = model_matematyczny_sis(t, arg,alfa,beta,gamma)
% Równanie ró¿niczkowe (4.55)
I = -beta*arg^2 + (beta - (alfa + gamma))*arg;