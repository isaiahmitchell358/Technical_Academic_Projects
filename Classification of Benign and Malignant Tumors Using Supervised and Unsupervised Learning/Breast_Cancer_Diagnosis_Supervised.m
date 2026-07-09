% Load the processed data
data = readtable('processed_data.csv');

% Separate features (input) and target (output)
inputData = table2array(data(:, 1:9)); % First 9 columns are the features
targetData = table2array(data(:, 10)); % Last column is the target (0 or 1)

% Split the data into training and testing sets
cv = cvpartition(size(inputData, 1), 'HoldOut', 0.2);
X_train = inputData(training(cv), :);
y_train = targetData(training(cv), :);
X_test = inputData(test(cv), :);
y_test = targetData(test(cv), :);

% Define the neural network architecture
layers = [
    featureInputLayer(9, 'Name', 'input') % Input layer (9 features)
    fullyConnectedLayer(16, 'Name', 'fc1') % First hidden layer (16 neurons)
    reluLayer('Name', 'relu1') % ReLu activation
    dropoutLayer(0.5, 'Name', 'dropout1') % Dropout (0.5)
    fullyConnectedLayer(8, 'Name', 'fc2') % Second hidden layer (8 neurons)
    reluLayer('Name', 'relu2') % ReLu activation
    dropoutLayer(0.5, 'Name', 'dropout2') % Dropout (0.5)
    fullyConnectedLayer(4, 'Name', 'fc3') % Third hidden layer (4 neurons)
    reluLayer('Name', 'relu3') % ReLu activation
    fullyConnectedLayer(4, 'Name', 'fc4') % Output layer (1 neuron)
    sigmoidLayer('Name', 'sigmoid') % Sigmoid activation for binary classification
    regressionLayer( 'Name', 'output') % Output layer for regression
];

% Define the training options
options = trainingOptions ('adam', ...      % Adam optimizer
    'InitialLearnRate', 0.001, ...          % Learning rate
    'MaxEpochs', 100, ...                   % Maximum number of epochs
    'Shuffle', 'every-epoch', ...           % Batch size
    'ValidationData', {X_test, y_test}, ... % Shuffle data every epoch
    'Plots', 'training-progress', ...       % Validation set
    'Verbose',true);                        % Plot training progress
                                            % Display training details

% Train the neural network
net = trainNetwork(X_train, y_train, layers, options);

% Predict on test data
y_pred = predict(net, X_test);

% Convert predictions to binary (threshold = 0.5)
y_pred_binary = y_pred > 0.5;

% Evaluate the model
accuracy = sum(y_pred_binary == y_test) / numel(y_test);
disp(['Test Accuracy: ', num2str(accuracy * 100), '%']);

% Ensure compatibility with confusionchart
y_test = double(y_test); % Ensure 'y-test' is a numeric array
y_pred_binary = double(y_pred_binary); % Ensure 'y_pred_binary' is a numeric array

% Plot confusion matrix
figure;
confusionchart(y_test, y_pred_binary, 'Title', 'Confusion Matrix');

% 2D Scatter Plot of Tumors (First Two Features)
figure;
hold on;

% Extract the first two features for visualization
X_vis = X_test(:, 1:2);

% Plot benign tumors
scatter(X_vis(y_test == 0, 1), X_vis(y_test == 0, 2), 50, 'blue', 'filled', ...
    'DisplayName', 'Benign')

% Plot malignant tumors
scatter(X_vis(y_test == 1, 1), X_vis(y_test == 1, 2), 50, 'red', 'filled', ...
    'DisplayName', 'Malignant')

% Add labels and legend
xlabel('Feature 1');
ylabel('Feature 2');
title('2D Visualization of Tumor Clusters');
legend('show');
grid on;
hold off;