function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% Way 1:
% Get respectively the Exam score 1, the Exam score 2. 
% X_col1 = X(:, 1);
% X_col2 = X(:, 2);
% 
% % Get respectively the result positive and negative. 
% y0 = (y == 0);
% y1 = (y == 1);
% 
% hold on; 
% plot(X_col1(y0), X_col2(y0), 'yo');
% plot(X_col1(y1), X_col2(y1), 'k+');


% Way 2:
% Find indices of positive and negative examples
pos = find(y == 1);
neg = find(y == 0);

% Plot examples. 
plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 2, ...
    'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', ...
    'MarkerSize', 7);


% =========================================================================



hold off;

end
