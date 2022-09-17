k = 10:20;
N_total = 2.^k;
pi_est = zeros(1, length(N_total));

for i = 1:length(N_total)
    pi_est(1, i) = pi_monte_carlo_for(N_total(1, i));
end

pi_err = abs(pi_est-pi);

hold on
yyaxis left
semilogx(pi_est)
yyaxis right
semilogx(pi_err)
print for_approximation.svg -dsvg
hold off