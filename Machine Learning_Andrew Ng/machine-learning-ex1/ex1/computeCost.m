function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% Case 1 - Iterative. 
% X has m x 2 (dimensions)
% y has m x 1 (dimensions)
% theta has 2 x 1 (dimensions)
% for i = 1 : m
%     tmpJ = 0; 
%     j = 1;  % Because theta vector has only one column.
%     for k = 1 : 2
%         tmpJ =  tmpJ + X(i, k)*theta(k, j);
%     end
%     
%     J = J + (tmpJ - y(i))^2;
% end
%
%J = (J / (2*m));

% Case 2 - Apply mulitplication matrix on each training example.
% for i = 1 : m
%     J = J + (theta' * X(i, :)' - y(i))^2;
% end
% 
% J = J / (2*m);

% Case 3 - Apply multiplication matrix. 
J = (1 / (2*m)) * sum(((X*theta) - y).^2);

% =========================================================================

end
