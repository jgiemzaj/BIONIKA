% DTMC SIS Epidemic Model
%Three Sample Paths and the Deterministic Solution

function SIS_01(alpha,beta,N,I_initial,t_initial,t_final)
dIdt = @(t,I) - alpha*I + beta*I*(N-I);
[t,I] = ode45(dIdt,[t_initial t_final],I_initial);
plot(t,I,t,N-I);
grid;
xlabel('Time [weeks]');
ylabel('Infected Population');
legend('Infected','Susceptable');

