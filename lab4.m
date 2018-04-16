% Dane wej�ciowe modelu:
t0 = 0; % czas pocz�tkowy symulacji
tk = 20; % czas ko�cowy symulacji
h = 0.5; % krok r�niczkowania (pocz�tkowy)
S0 = 0.4; % proporcja osobnik�w podatnych w t0
I0 = 0.6; % proporcja osobnik�w zainfekowanych w t0
% Rozwi�zanie r�wnania r�niczkowego metod� przybli�on� 
% Dormand-Prince
[wektor_czasu, rezultat] = ...
ode45(@model_matematyczny_sir, [t0, tk], [S0, I0], h);
% wyznaczenie proporcji osobnik�w podatnych,
% zainfekowanych i uodpornionych
osobniki_podatne = rezultat(:, 1);
osobniki_zainfekowane = rezultat(:, 2);
osobniki_uodpornione = 1-rezultat(:, 1)-rezultat(:, 2);
% przebiegi proporcji osobnik�w podatnych,
% zainfekowanych i uodpornionych w zale�no�ci od
% czasu
hold on;
plot(wektor_czasu, osobniki_podatne, 'r-');
plot(wektor_czasu, osobniki_zainfekowane, 'b-'); 
plot(wektor_czasu, osobniki_uodpornione, 'g-'); 

% ustawienie legendy, tytu�u, opis�w osi oraz
% uwidocznienie siatki
legend('Osobniki podatne', ...
'Osobniki zainfekowane', 'Osobniki uodpornione');
title(['Model epidemii SIR (S_0 = 0.4,'...
' I_0 = 0.6, \delta < 1)']);
xlabel('Czas'); ylabel('Proporcja populacji'); grid on