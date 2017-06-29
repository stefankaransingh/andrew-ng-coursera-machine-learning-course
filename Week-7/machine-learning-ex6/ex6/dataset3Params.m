function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
%C_param = [0.01,0.03,0.1,0.3,1,3,10,30];
%sigma_param = [0.01,0.03,0.1,0.3,1,3,10,30];
%combinations = length(C_param) * length(sigma_param);
%best_param = zeros(combinations,3);
%best_param

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
%count =1;
%for i = 1:length(C_param)
%  for j = 1:length(sigma_param)
%   model= svmTrain(X, y, C_param(i), @(x1, x2) gaussianKernel(x1, x2, sigma_param(j)));
%    predictions = svmPredict(model, Xval);
%    best_param(count,1) = C_param(i);
%    best_param(count,2) = sigma_param(j);
%   best_param(count,3) = mean(double(predictions ~= yval));
%   count = count + 1;
%   endfor
%endfor

%[min_val,index] = min(best_param(:,3));
%C = best_param(index,1);
%sigma = best_param(index,2);


C = 1;
sigma = 0.1;
% =========================================================================

end
