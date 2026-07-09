% Load the processed data
data = readtable('processed_data.csv');

% Separate features (input) and target (output)
inputData = table2array(data(:, 1:9)); % First 9 columns are the features
targetData = table2array(data(:, 10)); % Last column is the target (0 or 1)

% Normalize the input data for better performance
inputData = normalize(inputData);

% Apply PCA for dimensionality reduction
[coeff, score, ~] = pca(inputData);
embeddedData = score(:, 1:2); % Use the first two principal components

% Visualize the 2D embedding
figure;
hold on;

% Plot benign tumors
scatter(embeddedData(targetData == 0, 1), embeddedData(targetData == 0, 2), 50, 'blue', 'filled', ...
    'DisplayName', 'Benign')

% Plot malignant tumors
scatter(embeddedData(targetData == 1, 1), embeddedData(targetData == 1, 2), 50, 'red', 'filled', ...
    'DisplayName', 'Malignant')

% Add labels and legend
xlabel('PCA Dimension 1');
ylabel('PCA Dimension 2');
legend('show');
title('PCA of Tumor Data');
grid on;
hold off;