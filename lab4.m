% Dane wejœciowe modelu:
t0 = 0; % czas pocz¹tkowy symulacji
tk = 20; % czas koñcowy symulacji
h = 0.5; % krok ró¿niczkowania (pocz¹tkowy)
S0 = 0.4; % proporcja osobników podatnych w t0
I0 = 0.6; % proporcja osobników zainfekowanych w t0
% Rozwi¹zanie równania ró¿niczkowego metod¹ przybli¿on¹ 
% Dormand-Prince
[wektor_czasu, rezultat] = ...
ode45(@model_matematyczny_sir, [t0, tk], [S0, I0], h);
% wyznaczenie proporcji osobników podatnych,
% zainfekowanych i uodpornionych
osobniki_podatne = rezultat(:, 1);
osobniki_zainfekowane = rezultat(:, 2);
osobniki_uodpornione = 1-rezultat(:, 1)-rezultat(:, 2);
% przebiegi proporcji osobników podatnych,
% zainfekowanych i uodpornionych w zale¿noœci od
% czasu
hold on;
plot(wektor_czasu, osobniki_podatne, 'r-');
plot(wektor_czasu, osobniki_zainfekowane, 'b-'); 
plot(wektor_czasu, osobniki_uodpornione, 'g-'); 

% ustawienie legendy, tytu³u, opisów osi oraz
% uwidocznienie siatki
legend('Osobniki podatne', ...
'Osobniki zainfekowane', 'Osobniki uodpornione');
title(['Model epidemii SIR (S_0 = 0.4,'...
' I_0 = 0.6, \delta < 1)']);
xlabel('Czas'); ylabel('Proporcja populacji'); grid on