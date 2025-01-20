function pmf = poisson_pmf(lambda, k_max)
    % Initialize the PMF vector
    pmf = zeros(1, k_max+1);
    
    % Compute the PMF for each value from 0 to k_max
    for k = 0:k_max
        pmf(k+1) = (lambda^k * exp(-lambda)) / factorial(k);
    end
end