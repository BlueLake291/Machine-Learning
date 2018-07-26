function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

m_cols = size(X, 2);

% Case 1 - Apply multiplication matrix on each training example.
% for k = 1 : m_cols
%     mu(k) = mean(X(:, k));
%     sigma(k) = std(X(:, k));
%     
%     X_norm(:, k) = (X_norm(:, k) - mu(k)) / (sigma(k));
% end

% Case 2 - Apply multiplication matrix. 
mu = mean(X);
sigma = std(X);

for i = 1 : m_cols
   X_norm(:, i) = (X_norm(:, i) - mu(i)) / sigma(i); 
end

% ============================================================

end
