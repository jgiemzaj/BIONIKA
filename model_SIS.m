% Dane wej�ciowe modelu:
t0 = 0; % czas pocz�tkowy symulacji
tk = 10; % czas ko�cowy symulacji
h = 0.1; % krok r�niczkowania
I0 = 0.7;% proporcja osobnik�w zainfekowanych w t0
% Rozwi�zanie r�wnania r�niczkowego metod� przybli�on� 
% Dormand-Prince
[wektor_czasu, osobniki_zainfekowane] = ...
ode45(@model_matematyczny_sis, [t0, tk], I0, h);
% Wyznaczenie liczby osobnik�w podatnych
osobniki_podatne = 1 - osobniki_zainfekowane;
% Przebiegi liczby osobnik�w zainfekowanych i podatnych 
hold on;
plot(wektor_czasu, osobniki_podatne, 'r-');
plot(wektor_czasu, osobniki_zainfekowane, 'b--'); 
% Ustawienie legendy, tytu�u, opis�w osi oraz
% uwidocznienie siatki
legend('Osobniki podatne', 'Osobniki zainfekowane');
title(['Model epidemii SIS (S_0 = 0.99,'...
'I_0 = 0.01, \delta > 1)']);
xlabel('Czas'); ylabel('Proporcja populacji'); grid on