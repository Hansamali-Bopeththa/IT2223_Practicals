
function fact = factorial(n)
    if n < 0
        error('Factorial is undefined for negative numbers.');
    else
        fact = 1; % Initialize factorial value
        for i = 1:n
            fact = fact * i;
        end
    end
    disp(['Factorial of ', num2str(n), ' is ', num2str(fact)]);
end

