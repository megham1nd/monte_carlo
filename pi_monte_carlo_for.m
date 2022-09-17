function pi_est = pi_monte_carlo_for(N)
%Using the Monte Carlo method to approximate values of pi via a for loop
%{  
    The Monte Carlo method uses probability to approximate the area, equivocating
    area to the probability of some point landing within the boundary created by 
    some geometric shape. We determine a ratio of points that lie inside
    the circle by generating a set of N random points through the use of a for 
    loop, and comparing them to the equation of a circle. We can then approximate pi 
    by multiplying the ratio of points that lie inside versus total points
    by 4.
%}

    n_inside = 0;
    
    %loops through creation of N random points to estimate pi
    for i = 1:N
        %creation of random point
        rand_x = -1 + 2*rand;
        rand_y = -1 + 2*rand;
        %determining whether or not the point lies inside the circle
        if (rand_x^2+rand_y^2)<1
            %updating n_inside if point lies inside circle
            n_inside = n_inside + 1;
        end
    end

    pi_est = 4*n_inside/N;
end

