# Assignment 06 — Data Manipulation

## 📌 Overview

This assignment explores various data manipulation and preprocessing techniques using Python.

The assignment covers handling outliers, missing values, duplicate data, inconsistent categorical data, encoding, merging datasets, filtering, aggregation, pivot analysis, and feature scaling.

---

## 🎯 Objectives

The objectives of this assignment are to:

- Handle outliers using the IQR method
- Identify and handle missing values
- Detect duplicate data
- Clean inconsistent categorical values
- Encode categorical variables
- Merge and combine datasets
- Filter and sort data
- Perform grouping and aggregation
- Create Pivot Tables and Crosstabs
- Apply feature scaling for machine learning

---

## 📊 Datasets

The assignment uses multiple datasets, including:

### California Housing Dataset

Used for:

- Outlier analysis
- Data distribution analysis
- IQR outlier handling

Key features include:

- Median Income
- House Age
- Average Rooms
- Average Bedrooms
- Population
- Average Occupancy
- House Price

### Supermarket Sales Dataset

Used for:

- Data cleaning
- Data manipulation
- Joining and merging
- Filtering and sorting
- Grouping and aggregation
- Pivot Table and Crosstab analysis
- Feature Scaling

---

## 📚 Topics Covered

### 1. Outlier Handling

Outliers were identified using:

- Boxplots
- Distribution plots
- Interquartile Range (IQR)

The `AveOccup` feature was selected for outlier handling because of its extreme values.

Instead of removing rows, the assignment uses **capping with `clip()`** to reduce the impact of extreme values while preserving the dataset.

---

### 2. Data Cleaning

The data cleaning process includes:

- Handling missing values
- Checking duplicate data
- Identifying inconsistent categorical values
- Cleaning and standardizing data

This process helps improve data quality before further analysis or modeling.

---

### 3. Data Encoding

Categorical variables are transformed into numerical values using encoding techniques.

This process prepares categorical data for machine learning models that require numerical input.

---

### 4. Joining & Combining Data

Multiple datasets are combined using:

- `merge()`
- `concat()`

These operations are used to combine product information and new transaction data with the main sales dataset.

---

### 5. Filtering & Sorting

The assignment explores data using filtering conditions and sorting operations.

Examples include:

- Filtering E-wallet transactions with high purchase values
- Comparing monthly sales performance
- Identifying the highest and lowest sales periods

---

### 6. Grouping & Aggregation

Data is grouped using categorical variables such as:

- Branch
- Product Line

Aggregated metrics include:

- Total Sales
- Total Quantity
- Average Rating

Datetime operations are also used to analyze sales patterns by:

- Month
- Day Name

---

### 7. Pivot Table & Crosstab

The assignment uses:

- Pivot Tables
- Crosstab Analysis

These techniques help summarize relationships between categorical variables and identify sales patterns across different branches and product categories.

---

### 8. Feature Scaling

Two feature scaling techniques are applied:

#### StandardScaler

Transforms features so they have:

- Mean = 0
- Standard Deviation = 1

#### MinMaxScaler

Scales numerical features to a range between **0 and 1** while preserving the relative relationship between values.

###💡 Key Takeaway

One of the most important lessons from this assignment is that data preparation should be treated as a critical step before analysis or machine learning.

Different data problems require different approaches. For example, removing outliers may cause valuable information to be lost, while capping extreme values can reduce their impact without removing entire rows.

The assignment also showed that clean and properly prepared data makes patterns easier to identify and helps ensure that analysis and machine learning models are based on more reliable information.
