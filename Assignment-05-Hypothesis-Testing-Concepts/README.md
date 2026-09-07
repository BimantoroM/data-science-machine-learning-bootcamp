# Assignment 05 — Hypothesis Testing Concepts

## 📌 Overview

This assignment explores hypothesis testing concepts using a marketing campaign dataset.

The analysis begins with data exploration and descriptive statistics, followed by statistical assumption testing and an Independent Samples t-test to determine whether there is a significant difference in total spending between customers with children and customers without children.

---

## 🎯 Objectives

The objectives of this assignment are to:

- Explore and understand the dataset
- Identify and handle missing values
- Perform descriptive statistical analysis
- Compare customer groups
- Understand statistical assumptions
- Perform normality and variance tests
- Conduct hypothesis testing
- Interpret statistical results in the context of the data

---

## 📊 Dataset

The assignment uses a **Marketing Campaign Dataset** containing customer information such as:

- Income
- Education
- Marital Status
- Number of Children
- Product Spending
- Web Purchases
- Campaign Response

A new feature, `Total_Spending`, was created by combining spending across multiple product categories.

---

## 📚 Topics Covered

### 1. Data Exploration & Preparation

The analysis includes:

- Dataset structure exploration
- Missing value analysis
- Removing missing values in the `Income` column
- Feature creation
- Data cleaning and category standardization

Additional features include:

- `Total_Spending`
- `Has_Children`
- `Marital_Status_Clean`
- `Response_Label`

---

### 2. Descriptive Statistics & Visualization

The analysis compares customer characteristics using:

- Mean
- Standard Deviation
- Minimum and Maximum Values
- Quartiles
- Group Comparisons

Visualizations include:

- Boxplot
- Histogram
- KDE Distribution

---

### 3. Hypothesis Testing

The main research question is: 

> **Is there a significant difference in average total spending between customers with children and customers without children?**

#### Hypotheses

- **H0:** There is no significant difference in average Total Spending between the two groups.
- **H1:** There is a significant difference in average Total Spending between the two groups.

#### MinMaxScaler

Scales numerical features to a range between **0 and 1** while preserving the relative relationship between values.

## 💡 Key Takeaway

One of the most important lessons from this assignment is that a small p-value should not be interpreted by itself.

Statistical significance needs to be evaluated together with the actual data, including the difference between group averages, sample size, and the context of the analysis.

In this case, the significant result became more meaningful after comparing the actual average Total Spending between the two customer groups. This showed that hypothesis testing is not only about accepting or rejecting H0, but also about understanding what the result means in a real-world context.
