% MODEL SIR
% niezmienna liczba populacji
% dla I0>=I>0

% a- recruitment rate of population
% d- natural death rate of population
% lambda- proportionality constant
% beta- rate at which recovered individuals lose immunity
% and return to susceptible class
% m- natural recovery rate of infective individuals
% alfa1, alfa2- parameter measures of psycholog or inhibiotry effects

% do modelu skróconego
% lambda-srednia liczba kontaktów powoduj¹cych infekcjê
% gamma-wspolczynnik wyzdrowien


 SIR_01(20,15,10,3,0.1,0.3,0.1,0.01,1,0.1,0.2,60)
% dla I0>=I>0
% figure()
% SIR_02(20,15,10,2.8,0.0453,0.4,0.13,0.01,1,2,0.2,200)

% I_initial = 100; % Number of infected individuals at t_initial
% t_initial = 0; % Initial time
% t_final = 3; % Final time
% N = 20000; % Population size
% alpha = 1; % Fraction of infected individuals recovering in one period
% beta = 5/N; % Fraction of susceptible people infected by one person
%  SIS_01(alpha,beta,N,I_initial,t_initial,t_final)
