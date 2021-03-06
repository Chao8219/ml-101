% This file is to do linear regression on the titanic dataset
% where the output would be the fare
% inputs would be pclass, sex, age, sibsp, parch
function linear_regression_titanic
clc; close all;

% read raw dataset
filename = 'titanic.xls';
raw_DS = readtable(filename);

% obtain subtable
DS = raw_DS(:, {'pclass', 'sex', 'age', 'sibsp', 'parch', 'fare'});

% refine dataset
fine_DS = DS(~isnan(DS.age) &  DS.fare~=0 & ~isnan(DS.fare), :);
fine_DS.sex = grp2idx(cellstr(fine_DS.sex));
fine_DS_arr = table2array(fine_DS);

% shuffle by rows
fine_DS_shuffled = fine_DS_arr(randperm(size(fine_DS_arr, 1)), :);

% construct dataset
X_DS = fine_DS_shuffled(:, 1:5);
y_DS = fine_DS_shuffled(:, 6);

% add polynomial features
poly = [];
for i = 1:5
    for j = 1:5
        poly = [poly, X_DS(:, i).*X_DS(:, j)];
    end
end
X_DS = [X_DS, poly];

n_train = size(X_DS, 2); % feature number
m_total = size(y_DS, 1); % data number

% select 70% -> training set; 30% -> test set
m_train = floor(m_total*0.7);
m_test = m_total - m_train;

% construct training set and test set
X_train = X_DS(1:m_train, :);
y_train = y_DS(1:m_train);

X_test = X_DS(m_train+1:end, :);
y_test = y_DS(m_train+1:end);

% feature scaling
mu_train = mean(X_train, 1);
std_train = std(X_train, 1);
X_train = (X_train - mu_train) ./ std_train;

mu_test = mean(X_test, 1);
std_test = std(X_test, 1);
X_test = (X_test - mu_test) ./ std_test;

% add ones for bias term
X_train = [ones(m_train, 1), X_train];
X_test = [ones(m_test, 1), X_test];

% initialize for optimization
theta_0 = ones(n_train+1, 1)*20.0;
reg_lambda = 1e-2;
[J, dJ_dtheta] = cost_func(theta_0, X_train, y_train, reg_lambda);

func_handle = @(theta) cost_func(theta, X_train, y_train, reg_lambda);
fminunc_options = optimoptions('fminunc', ...
    'SpecifyObjectiveGradient', true, 'Display', 'iter', ...
    'FiniteDifferenceType', 'central');

% find the optimal theta
[theta_opt, J] = fminunc(func_handle, theta_0, fminunc_options);

theta_opt_normal = normal_eq(X_train, y_train, reg_lambda);
fprintf('The relative difference between two methods: %.2e\n', ...
    norm(theta_opt_normal-theta_opt)./norm(theta_opt_normal+theta_opt));

% exam the theta_opt
y_predict = X_train * theta_opt;
err_val = norm(y_predict-y_train) ./ norm(y_predict+y_train);
fprintf('Train Error: %.2e\n', err_val);

end

function theta_opt = normal_eq(X_train, y_train, reg_lambda)
idm = eye(size(X_train, 2));
idm(1, 1) = 0.0;
temp_mat = X_train' * X_train + reg_lambda * idm;
theta_opt = inv(temp_mat) * X_train' * y_train;
end

function [J, dJ_dtheta] = cost_func(theta, X_train, y_train, reg_lambda)
m_train = size(y_train, 1);

temp_err = X_train * theta - y_train;
J = (1.0/(2.0*m_train))*(temp_err'*temp_err + ...
    reg_lambda*sum((theta(2:end).^2)));

dJ_dtheta = (1.0/m_train)*(X_train'*temp_err);
dJ_dtheta(2:end) = dJ_dtheta(2:end) + (reg_lambda/m_train)*theta(2:end);
end