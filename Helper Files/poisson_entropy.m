function H = poisson_entropy(lambda, k_max)
    % Compute the PMF
    pmf = poisspdf(0:k_max, lambda);
    
    % Compute the entropy
    H = -sum(pmf .* log2(pmf + (pmf == 0)));
end
