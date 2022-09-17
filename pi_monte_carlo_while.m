function pi_est = pi_monte_carlo_while(tol)
%Using the Monte Carlo method to approximate values of pi via a while loop
%{  
    The Monte Carlo method uses probability to approximate the area, equivocating
    area to the probability of some point landing within the boundary created by 
    some geometric shape. We determine a ratio of points that lie inside
    the circle by generating a set of total random points through the use of a for 
    loop, and comparing them to the equation of a circle. We can then use a while
    loop to mininmize the difference between our estimated pi and actual pi by increasing the 
    number of points used in the equation until the error crosses below some given
    tolerance threshold.
%}
    pi_est = 0;
    n_total = 0;
    n_inside = 0;

    %continues adding more random points until the error between the
    %estimated and actual pi equals or comes below some given tolerance
    while abs(pi_est-pi)/pi > tol
        %creation of random point
        rand_x = -1 + 2*rand;
        rand_y = -1 + 2*rand;
        %determining whether or not the point lies inside the circle
        if (rand_x^2+rand_y^2) < 1
            %updating n_inside if point lies inside circle
            n_inside = n_inside + 1;
        end
        %updating n_total to account for a new random point
        n_total = n_total + 1;
        %updating pi_est to see if new value is suitable for given error
        %tol
        pi_est = 4*n_inside/n_total;
    end
    
end

