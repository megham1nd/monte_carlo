k = 5:0.1:15;
tol = 2.^-k;
time = zeros(1, length(tol));

for i = 1:length(tol)
    tic
    pi_monte_carlo_while(tol(1, i));
    time(1, i) = toc;
end

semilogx(tol, time)
set(gca,'xscale','log')
xlabel('Tolerance')
ylabel('Time')
grid on
print while_approximation.svg -dsvg