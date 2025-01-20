function entropy = entropy_function(pmf_vector)
    % Ensure that the input is a valid PMF (probabilities sum to 1)
    if abs(sum(pmf_vector) - 1) > eps
        error('Input vector is not a valid probability mass function (PMF). Probabilities should sum to 1.');
    end

    % Calculate entropy using the formula
    entropy = -sum(pmf_vector .* log2(pmf_vector));
end