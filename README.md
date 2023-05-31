# Newton-Raphson-Method-Formula-in-MATLAB
This is a MATLAB function that implements the Newton-Raphson method for finding the root of a real-valued function. The method uses the tangent line of the function at a given point to estimate the location of its roots, and iteratively refines this estimate until the desired level of accuracy is achieved.

# Usage
To use this function, follow these steps:

1. Define the function f(x) and its derivative df(x) as function handles.
2. Choose an initial guess for the root x0.
3. Set the desired tolerance for the error between subsequent iterations tol.
4. Set the maximum number of iterations max_iter.
5. Set the maximum number of iterations max_iter.
6.Call the newton_raphson function with the function handles, initial guess, tolerance, and maximum number of iterations as arguments.
7.The function will return the estimated root of the function and the number of iterations required to reach the root.

Here's an example of how to use the newton_raphson function to find the root of the function f(x) = x^3 - x^2 + 2:

```
% Define the function f(x) and its derivative df(x) as function handles
f = @(x) x^3 - x^2 + 2;
df = @(x) 3*x^2 - 2*x;

% Choose an initial guess for the root
x0 = 1;

% Set the desired tolerance and maximum number of iterations
tol = 1e-6;
max_iter = 100;

% Call the newton_raphson function with the function handles, initial guess, tolerance, and maximum number of iterations
[root, iter] = newton_raphson(f, df, x0, tol, max_iter);

% Display the results
fprintf('Estimated root: %f\n', root);
fprintf('Number of iterations: %d\n', iter);

```

Note that the actual root of the function f(x) = x^3 - x^2 + 2 is approximately 1.3473. The algorithm should converge tothis value if a suitable initial guess is chosen and the desired level of accuracy is set appropriately.

