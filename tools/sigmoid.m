function g_z = sigmoid(z)
g_z = 1.0 ./ (1.0 + exp(-z));
end