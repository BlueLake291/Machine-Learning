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
    % Case 1 - Iterative.
%     J1 = zeros(2, 1);   % contains sum (from 1 to m) of (h(x(i)) - y(i)) * x^(i)j
%     
%     for i = 1 : m 
%         tmpJ = 0;
%         j = 1; 
%         for k = 1 : 2
%             tmpJ = tmpJ + X(i, k)*theta(k, j);
%         end
%         
%         tmpJ = tmpJ - y(i);
%         J1(1) = J1(1) + tmpJ * X(i, 1); 
%         J1(2) = J1(2) + tmpJ * X(i, 2);
%     end
% 
%     theta(1) = theta(1) - (alpha/m)*(J1(1));
%     theta(2) = theta(2) - (alpha/m)*(J1(2));

      % Case 2 - Multiplication matrix on each training example. 
%       J1 = zeros(size(alpha, 2), 1);
%       for i = 1 : m
%         x = X(i, :)';
%         J1 = J1 + ((theta' * x) - y(i))*x;
%       end
% 
%       theta = theta - ((alpha/m) * J1);

      % Case 3 - Apply multiplication matrix. 
      %delta = zeros(size(theta, 1), 1);
      delta = (1 / m) * (((X * theta) - y)' * X)';
      theta = theta - (alpha * delta);
      
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
