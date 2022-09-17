k = 5:10;
tol = 2.^-k;
time = zeros(1, length(tol));

for i = 1:length(tol)
    tic
    pi_monte_carlo_while(tol(1, i));
    time(1, i) = toc;
end

plot(tol, time)
print while_approximation.svg -dsvg