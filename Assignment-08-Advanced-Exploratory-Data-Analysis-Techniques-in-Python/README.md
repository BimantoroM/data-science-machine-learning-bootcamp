# Assignment 08 — Advanced Exploratory Data Analysis Techniques in Python

## 📌 Overview

This assignment explores advanced Exploratory Data Analysis (EDA) techniques using a Telco Customer Churn Dataset.

The analysis focuses on understanding customer churn through data cleaning, feature engineering, data manipulation, multivariate analysis, and business-oriented insights.

---

## 🎯 Objectives

The objectives of this assignment are to:

- Understand the structure and characteristics of the dataset
- Clean and prepare data for analysis
- Perform feature engineering
- Analyze customer churn from different perspectives
- Apply advanced data manipulation techniques
- Identify relationships between multiple variables
- Generate business insights and recommendations

---

## 📊 Dataset

The assignment uses a **Telco Customer Churn Dataset** containing 7,043 customer records and 33 attributes.

The dataset includes information such as:

- Tenure Months
- Contract
- Payment Method
- Internet Service
- Monthly Charges
- Total Charges
- Churn Label
- Churn Reason
- Churn Score
- Customer Lifetime Value (CLTV)
- City
- Additional Services

---

## 📚 Topics Covered

### 1. Data Understanding & Cleaning

The analysis includes:

- Exploring dataset structure
- Identifying numerical and categorical variables
- Investigating missing values
- Checking duplicate data
- Converting data types
- Removing uninformative columns
- Standardizing inconsistent categories

Several columns with limited analytical value were removed, while `Total Charges` was converted into a numerical format.

---

### 2. Feature Engineering

New features were created to support deeper analysis, including:

- `JoinDate`
- `JoinYearMonth`
- `TenureGroup`
- `JumlahLayananTambahan`
- `ChurnReasonGroup`

These features help analyze customer behavior, tenure, service usage, and churn reasons more effectively.

---

### 3. Advanced Data Manipulation

Several data manipulation techniques were applied, including:

- Sorting
- Filtering
- GroupBy
- Crosstab
- Pivot Table
- Melt
- Datetime Manipulation

These techniques were used to answer specific business questions related to customer churn.

---

### 4. Customer Churn Analysis

The analysis explores several factors related to churn:

#### Contract Type

Customers with **Month-to-month contracts** have a significantly higher churn rate compared to customers with longer contracts.

---

#### Payment Method

Customers using **Electronic check** show the highest churn rate compared to customers using automatic payment methods.

---

#### Customer Tenure

Customers with shorter tenure, especially those within their first 12 months, show a higher churn rate.

---

#### Additional Services

Customers using more additional services tend to have lower churn rates.

Services such as:

- Tech Support
- Online Security

show stronger relationships with customer retention.

---

#### Churn Reasons

The most common churn reasons are related to:

- Competitor offers
- Service quality
- Customer service experience

The analysis also compares churn reasons with CLTV and customer locations.

---

### 5. Multivariate Analysis

A correlation heatmap was used to analyze relationships between multiple numerical variables.

Key relationships include:

- Strong positive correlation between `Tenure Months` and `Total Charges`
- Strong positive correlation between `Churn Score` and `Churn Value`
- Negative relationship between `Tenure Months` and churn
- Negative relationship between additional services and churn
- Positive relationship between `Monthly Charges` and churn risk

---

## 💼 Business Recommendations

Based on the analysis, several recommendations were proposed:

- Focus retention programs on new customers within their first 12 months
- Encourage Month-to-month customers to upgrade to longer contracts
- Promote automatic payment methods
- Cross-sell services such as Tech Support and Online Security
- Improve competitiveness in pricing and service quality
- Improve customer service experience
- Prioritize retention for high-value customers with higher CLTV

---

## 🛠️ Tools & Libraries

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

---

## 🔑 Key Concepts

The main concepts explored in this assignment include:

- Exploratory Data Analysis
- Data Cleaning
- Feature Engineering
- Missing Value Handling
- Data Type Conversion
- Sorting
- Filtering
- GroupBy
- Crosstab
- Pivot Table
- Melt
- Datetime Manipulation
- Correlation Analysis
- Multivariate Analysis
- Customer Churn Analysis
- Business Insights

---

## 🚀 Learning Outcomes

Through this assignment, I learned how to:

- Perform deeper Exploratory Data Analysis
- Create meaningful features from existing data
- Apply different data manipulation techniques
- Analyze customer behavior from multiple perspectives
- Identify high-risk customer segments
- Analyze relationships between multiple variables
- Translate analytical findings into business recommendations

---

## 💡 Key Takeaway

One of the most important lessons from this assignment is that customer churn cannot be explained by a single factor.

The analysis showed that churn is connected to multiple aspects of customer behavior, including contract type, payment method, customer tenure, additional services, and customer experience.

Feature engineering and advanced data manipulation also helped transform raw data into more meaningful information. By combining multiple analysis techniques, it became easier to identify high-risk customer segments and translate the findings into actionable business recommendations.

