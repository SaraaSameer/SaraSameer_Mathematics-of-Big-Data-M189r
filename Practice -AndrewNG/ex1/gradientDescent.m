function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    n = size(X,2);
    temp = zeros(n,1);    %n is 3

    for j=1:n
        J = 0;

        for i=1:m
            J = J + (((X(i,:) * theta) - y(i,:)) * X(i,j));
        end

        J = (J * alpha) / m;
        temp(j,1) = theta(j,1) - J;
    end
    
    theta = temp;


%theta0 = -3.895781,
%tehta1 = 1.193034


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end