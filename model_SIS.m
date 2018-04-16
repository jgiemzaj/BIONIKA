% Dane wejściowe modelu:
t0 = 0; % czas początkowy symulacji
tk = 10; % czas końcowy symulacji
h = 0.1; % krok różniczkowania
I0 = 0.7;% proporcja osobników zainfekowanych w t0
% Rozwiązanie równania różniczkowego metodą przybliżoną 
% Dormand-Prince
[wektor_czasu, osobniki_zainfekowane] = ...
ode45(@model_matematyczny_sis, [t0, tk], I0, h);
% Wyznaczenie liczby osobników podatnych
osobniki_podatne = 1 - osobniki_zainfekowane;
% Przebiegi liczby osobników zainfekowanych i podatnych 
hold on;
plot(wektor_czasu, osobniki_podatne, 'r-');
plot(wektor_czasu, osobniki_zainfekowane, 'b--'); 
% Ustawienie legendy, tytułu, opisów osi oraz
% uwidocznienie siatki
legend('Osobniki podatne', 'Osobniki zainfekowane');
title(['Model epidemii SIS (S_0 = 0.99,'...
'I_0 = 0.01, \delta > 1)']);
xlabel('Czas'); ylabel('Proporcja populacji'); grid on