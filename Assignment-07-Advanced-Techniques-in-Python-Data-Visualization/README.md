# Assignment 07 — Advanced Techniques in Python & Data Visualization

## 📌 Overview

This assignment explores advanced Python techniques for data analysis and visualization using a Telco Customer Churn Dataset.

The analysis focuses on preparing the dataset, exploring numerical and categorical variables, identifying patterns related to customer churn, and communicating insights through data visualization and storytelling.

---

## 🎯 Objectives

The objectives of this assignment are to:

- Explore and understand the dataset before visualization
- Identify and handle missing values
- Analyze numerical and categorical variables
- Create univariate and bivariate visualizations
- Identify patterns related to customer churn
- Use data visualization to communicate business insights
- Create a dashboard to support data storytelling

---

## 📊 Dataset

The assignment uses a **Telco Customer Churn Dataset** containing information about 7,043 customers.

The dataset includes customer information such as:

- Tenure Months
- Monthly Charges
- Total Charges
- Contract Type
- Internet Service
- Payment Method
- Churn Label
- Churn Score
- Customer Lifetime Value (CLTV)

---

## 📚 Topics Covered

### 1. Data Exploration & Preparation

The analysis begins by examining:

- Dataset size and structure
- Data types
- Missing values
- Numerical and categorical variables

The `Total Charges` column was converted from text into numerical data.

Missing values were investigated and handled based on their business context. Customers with `Tenure Months = 0` had their `Total Charges` filled with `0` because they had not yet accumulated charges.

---

### 2. Distribution Analysis

Several visualizations were used to understand data distributions:

- Histogram
- KDE Plot
- Boxplot

Key numerical variables include:

- Tenure Months
- Monthly Charges
- Total Charges
- Churn Score
- CLTV

---

### 3. Bivariate Analysis

Relationships between variables were explored using:

- Scatter Plot
- Correlation Heatmap

The analysis identified relationships between:

- Tenure Months and Total Charges
- Monthly Charges and Churn Score
- Tenure Months and Churn Value

---

### 4. Categorical Data Visualization

Categorical variables were analyzed using Countplots.

The analysis focuses on:

- Churn Distribution
- Contract Type
- Internet Service
- Payment Method

Several patterns were identified between these variables and customer churn.

---

### 5. Data Storytelling

A dashboard was created to communicate the main churn insights.

The analysis highlights:

- Overall customer churn proportion
- Contract type and churn risk
- Customer tenure and churn
- Monthly charges and churn

The visualizations were combined to create a clearer business story about which customers are more likely to churn.

---

## 📊 Key Insights

Some of the main findings from the analysis include:

- Approximately 27% of customers have churned.
- Customers with Month-to-month contracts show a higher churn rate.
- Customers with shorter tenure are more likely to churn.
- Higher Monthly Charges are associated with higher churn risk.
- Electronic check users show a higher proportion of churn.
- Contract type, payment method, and internet service show meaningful patterns related to churn.

---

## 🛠️ Tools & Libraries

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Plotly
- Jupyter Notebook

---

## 🔑 Key Concepts

The main concepts explored in this assignment include:

- Data Exploration
- Data Cleaning
- Missing Value Handling
- Data Type Conversion
- Univariate Analysis
- Bivariate Analysis
- Histogram
- KDE Plot
- Boxplot
- Scatter Plot
- Correlation Analysis
- Heatmap
- Countplot
- Customer Churn Analysis
- Data Storytelling
- Dashboard Visualization

---

## 🚀 Learning Outcomes

Through this assignment, I learned how to:

- Prepare data before visualization
- Choose appropriate visualizations based on data types
- Analyze data distributions
- Identify relationships between variables
- Compare categorical groups
- Interpret visual patterns related to customer churn
- Combine multiple visualizations into a dashboard
- Communicate analytical findings through data storytelling

---

## 💡 Key Takeaway

One of the most important lessons from this assignment is that data visualization is not only about creating charts, but also about selecting the right visualization to answer a specific question.

The analysis showed that customer churn is connected to multiple factors rather than a single variable. Customers with short tenure, month-to-month contracts, and higher monthly charges showed stronger churn patterns.

By combining multiple visualizations, the analysis can move beyond individual charts and create a clearer story that helps identify which customers may be at higher risk of leaving.

