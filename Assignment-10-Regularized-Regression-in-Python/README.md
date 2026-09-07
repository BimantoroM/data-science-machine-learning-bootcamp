# Assignment 10 — Regularized Regression in Python

## 📌 Overview

This assignment explores Regularized Regression techniques using the Boston Housing Dataset.

The analysis focuses on building and comparing Ridge Regression and Lasso Regression models to predict median house prices while addressing challenges such as multicollinearity and overfitting.

---

## 🎯 Objectives

The objectives of this assignment are to:

- Understand the structure and features of the dataset
- Perform exploratory data analysis
- Identify outliers and data distributions
- Analyze feature correlations
- Detect multicollinearity using correlation and VIF
- Prepare and scale data for machine learning
- Build Ridge Regression and Lasso Regression models
- Perform hyperparameter tuning
- Compare model performance
- Interpret model coefficients

---

## 📊 Dataset

The assignment uses the **Boston Housing Dataset**.

Each record represents a neighborhood or residential area with information such as:

- Crime Rate
- Residential Land Zone
- Industrial Area
- Air Pollution
- Average Number of Rooms
- House Age
- Distance to Employment Centers
- Property Tax Rate
- Pupil-Teacher Ratio
- Socioeconomic Status

The target variable is:

- `medv` — Median value of owner-occupied homes

---

## 📚 Topics Covered

### 1. Data Exploration & Preparation

The analysis includes:

- Understanding dataset features
- Checking missing values
- Analyzing data distributions
- Identifying outliers
- Splitting the data into Train, Validation, and Test sets
- Feature scaling using `StandardScaler`

The dataset was divided into:

- Train Set — 60%
- Validation Set — 20%
- Test Set — 20%

---

### 2. Correlation & Multicollinearity

Feature relationships were analyzed using:

- Correlation Matrix
- Correlation Heatmap
- Variance Inflation Factor (VIF)

Several highly correlated feature pairs were identified, including:

- `rad` and `tax`
- `nox` and `indus`
- `nox` and `age`

Two approaches were compared:

- Using all features
- Using selected features to reduce redundancy

---

### 3. Ridge Regression

Ridge Regression uses **L2 Regularization**.

This technique reduces the size of model coefficients while keeping all features in the model.

Ridge is useful when multiple features contain overlapping or highly correlated information.

---

### 4. Lasso Regression

Lasso Regression uses **L1 Regularization**.

Unlike Ridge, Lasso can reduce some coefficients to exactly zero.

This allows Lasso Regression to perform automatic feature selection.

---

### 5. Hyperparameter Tuning

Different `lambda` values (`alpha` in Scikit-learn) were tested to identify the optimal regularization strength.

The best parameter for each model was selected based on the lowest RMSE on the validation set.

---

### 6. Model Evaluation

The final models were evaluated using the Test Set.

Evaluation metrics include:

- MAE — Mean Absolute Error
- MAPE — Mean Absolute Percentage Error
- RMSE — Root Mean Squared Error

Predicted values were also compared with actual values to visualize model performance.

---

## 🛠️ Tools & Libraries

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- Statsmodels
- Jupyter Notebook

---

## 🔑 Key Concepts

The main concepts explored in this assignment include:

- Exploratory Data Analysis
- Regression
- Regularization
- Ridge Regression
- Lasso Regression
- L1 Regularization
- L2 Regularization
- Multicollinearity
- Correlation Analysis
- Variance Inflation Factor (VIF)
- Feature Selection
- Feature Scaling
- StandardScaler
- Hyperparameter Tuning
- Train / Validation / Test Split
- MAE
- MAPE
- RMSE
- Model Evaluation

---

## 🚀 Learning Outcomes

Through this assignment, I learned how to:

- Prepare data for regression modeling
- Identify relationships between features and the target variable
- Detect multicollinearity
- Apply feature scaling
- Split data into training, validation, and test sets
- Build Ridge and Lasso Regression models
- Tune regularization parameters
- Compare different modeling approaches
- Interpret model coefficients
- Evaluate regression models using multiple metrics

---

## 💡 Key Takeaway

One of the most important lessons from this assignment is that a more complex model is not always a better model.

When features contain overlapping or highly correlated information, regularization can help reduce overfitting and improve model stability.

Ridge Regression is useful for shrinking the influence of correlated features while keeping them in the model, whereas Lasso Regression can simplify the model by reducing less important feature coefficients to zero.

This assignment also highlighted the importance of separating training, validation, and test data. The validation set helps select the best model configuration, while the test set provides a more honest evaluation of how well the final model performs on unseen data.


