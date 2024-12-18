clear all
close all
clc


% Load data
load('ShiYuQi_table_datas.mat');

% Convert the data into the appropriate format
total_scores = total_scores(:);  % Flatten the data
rounds_number = rounds_number(:);  
max_consecutive_points = max_consecutive_points(:);
game_points = game_points(:);
victory_labels = victory_labels(:);

% Combine the features into a single matrix (assuming each feature is independent)
X = [total_scores, rounds_number, max_consecutive_points, game_points];
y = victory_labels;  % Target variable: Win/loss label


% Initialize parameters
theta = zeros(size(X, 2), 1);  % Initial model parameters
sigma = 1;  % Set the initial learning rate
num_iterations = 1000;  % Number of iterations


% Logistic regression model
sigmoid = @(z) 1 ./ (1 + exp(-z));  % Sigmoid function

% Likelihood function
likelihood = @(theta, X, y) prod(sigmoid(X * theta) .^ y .* (1 - sigmoid(X * theta)) .^ (1 - y));

% Prior distribution (assumed to be normal distribution)
prior = @(theta) exp(-0.5 * theta' * theta);  % Standard Normal Distribution


% Markov Chain Monte Carlo Sampling
for iter = 1:num_iterations
    % Generate new candidate parameter values
    theta_prime = theta + sigma * randn(size(theta));  % Use normal distribution to generate new parameters

    % Calculate the acceptance probability
    alpha = min(1, (likelihood(theta_prime, X, y) * prior(theta_prime)) / (likelihood(theta, X, y) * prior(theta)));
    
    % Decide whether to accept the new parameter
    if 0.5 < alpha      % Accept only if the probability is greater than 0.5        XX rand() < alpha XX
        theta = theta_prime;  % Accept the new parameter
    end
end


% Use the final theta to predict the probability of victory
predicted_victory_prob = sigmoid(X * theta);  % Predict the probability of winning each match


% Visualize the prediction results
figure;
plot(predicted_victory_prob, 'o');
xlabel('Match Number');
ylabel('Predicted Victory Probability');
title('Victory Probability Prediction');

