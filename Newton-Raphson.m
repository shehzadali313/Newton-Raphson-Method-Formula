function [x, iter] = newton_raphson(f, df, x0, tol, max_iter)
% Inputs:
% - f: a function handle representing f(x)
% - df: a function handle representing the derivative of f(x)
% - x0: the initial guess for the root
% - tol: the tolerance for the error between subsequent iterations
% - max_iter: the maximum number of iterations allowed
% Outputs:
% - x: the estimated root of f(x)
% - iter: the number of iterations required to reach the root

% Initialize the iteration counter and the error
iter = 0;
err = inf;

while err > tol && iter < max_iter
    % Compute the next approximation of the root using the Newton-Raphson formula
    x = x0 - f(x0)/df(x0);
    
    % Compute the error between the current and previous approximations
    err = abs(x - x0);
    
    % Update the iteration counter and the previous approximation
    iter = iter + 1;
    x0 = x;
end

% Check if the algorithm has converged
if iter == max_iter && err > tol
    warning('Newton-Raphson method did not converge within the specified maximum number of iterations.');
end
end
