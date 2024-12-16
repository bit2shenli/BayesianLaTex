clear all
close all
clc


%% 加载数据
load('shi_yu_qi_datas.mat');

% 将数据转化为合适的格式
total_scores = total_scores(:);  % 展平数据
rounds_per_match = rounds_per_match(:);  
max_consecutive_points = max_consecutive_points(:);
game_points = game_points(:);
victory_labels = victory_labels(:);

% 将特征合并为一个矩阵（假设每个特征独立）
X = [total_scores, rounds_per_match, max_consecutive_points, game_points];
y = victory_labels;  % 目标变量：胜负标签


%% 初始化参数
theta = zeros(size(X, 2), 1);  % 初始模型参数
sigma = 1;  % 设置初始步长
num_iterations = 1000;  % 迭代次数


%% 逻辑回归模型
sigmoid = @(z) 1 ./ (1 + exp(-z));  % sigmoid函数

% 似然函数
likelihood = @(theta, X, y) prod(sigmoid(X * theta) .^ y .* (1 - sigmoid(X * theta)) .^ (1 - y));

% 先验分布（假设正态分布）
prior = @(theta) exp(-0.5 * theta' * theta);  % 标准正态分布


%% MCMC采样
for iter = 1:num_iterations
    % 生成新的参数候选值
    theta_prime = theta + sigma * randn(size(theta));  % 使用正态分布生成新参数

    % 计算接受概率
    alpha = min(1, (likelihood(theta_prime, X, y) * prior(theta_prime)) / (likelihood(theta, X, y) * prior(theta)));
    
    % 决定是否接受新参数
    if 0.5 < alpha      % 概率大于0.5才接受        XX rand() < alpha XX
        theta = theta_prime;  % 接受新参数
    end
end


%% 使用最后的theta预测胜利概率
predicted_victory_prob = sigmoid(X * theta);  % 预测每场比赛胜利的概率


%% 可视化预测结果
figure;
plot(predicted_victory_prob, 'o');
xlabel('Match Number');
ylabel('Predicted Victory Probability');
title('Victory Probability Prediction');

