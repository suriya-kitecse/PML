# Load the data
house_data <- read.csv("path_to_house_data.csv")

# Check the structure and summary statistics
str(house_data)
summary(house_data)

# Data preprocessing (handling missing values, encoding categorical variables, etc.)
# Example: Convert location to a factor variable
house_data$location <- as.factor(house_data$location)

# Split data into predictors (X) and target variable (y)
X <- house_data[, c("area", "bedrooms", "location")]
y <- house_data$price

# Fit a linear regression model
model <- lm(price ~ area + bedrooms + location, data = house_data)

# Summary of the model
summary(model)

# Predictions
predictions <- predict(model, newdata = X)

# Calculate model performance metrics (e.g., RMSE, R-squared)
# Example: RMSE calculation
rmse <- sqrt(mean((y - predictions)^2))
rmse

# Evaluate other metrics based on your specific needs
# Load the test data
test_data <- read.csv("path_to_test_data.csv")

# Preprocess test data (similar to training data preprocessing steps)

# Make predictions on the test set
test_predictions <- predict(model, newdata = test_data)

# Display or save the predictions
print(test_predictions)
# Or save to a file
write.csv(test_predictions, file = "predicted_prices.csv", row.names = FALSE)
