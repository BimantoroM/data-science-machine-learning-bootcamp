# Assignment 09 — Advanced SQL Queries

## 📌 Overview

This assignment explores advanced SQL querying techniques using the DVD Rental database.

The assignment focuses on retrieving, filtering, grouping, and analyzing data across multiple tables using advanced SQL features such as subqueries, window functions, Common Table Expressions (CTE), and CASE WHEN statements.

---

## 🎯 Objectives

The objectives of this assignment are to:

- Retrieve and filter data using SQL queries
- Group and aggregate transaction data
- Combine data from multiple tables using JOIN
- Use UNION to combine query results
- Apply subqueries for comparative analysis
- Use Window Functions for ranking
- Create Common Table Expressions (CTE)
- Classify data using CASE WHEN

---

## 📊 Database

The assignment uses the **DVD Rental Database**.

The analysis involves several tables, including:

- Actor
- Customer
- Film
- Film_Actor
- Payment
- Rental
- Inventory
- Address

---

## 📚 Topics Covered

### 1. Data Querying & Filtering

Basic SQL queries were used to:

- Retrieve actor information
- Filter actors based on specific first names
- Analyze payment transactions
- Group customer transactions
- Filter results using `WHERE` and `HAVING`

---

### 2. Data Categorization

Film duration and rental rates were categorized using:

- `CASE`
- `WHEN`
- `THEN`
- `ELSE`

Examples include:

- Film duration categories
- Premium, Regular, and Budget films
- High, Medium, and Low Value Customers

---

### 3. JOIN & UNION

Data from multiple tables was combined using:

- `JOIN`
- `LEFT JOIN`
- `UNION`

Examples include combining:

- Rental and payment information
- Customer and transaction data
- Address data from different cities

---

### 4. Subqueries

Subqueries were used to compare values against overall averages.

Examples include:

- Customers with transactions above the average payment amount
- Films with durations above the average film length
- Actors who appeared in only one film

---

### 5. Window Functions

Several Window Functions were applied:

#### `RANK()`

Used to rank films based on rental rates.

#### `DENSE_RANK()`

Used to rank customers based on their total transaction amounts.

#### `ROW_NUMBER()`

Used to assign sequential numbers to films based on their release year.

---

### 6. Common Table Expressions (CTE)

CTEs were used to create temporary result sets for further analysis.

Examples include:

- Customers with more than 10 transactions
- Films with the highest number of rentals

---

### 7. CASE WHEN Classification

`CASE WHEN` statements were used to classify data based on specific conditions.

Examples include:

- Film categories based on rental rates
- Customer categories based on total transaction amounts

---

## 🛠️ Tools & Technologies

- SQL
- PostgreSQL
- DBeaver
- DVD Rental Database

---

## 🔑 Key Concepts

The main concepts explored in this assignment include:

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- Aggregate Functions
- JOIN
- LEFT JOIN
- UNION
- Subquery
- RANK()
- DENSE_RANK()
- ROW_NUMBER()
- Window Functions
- Common Table Expressions (CTE)
- CASE WHEN

---

## 🚀 Learning Outcomes

Through this assignment, I learned how to:

- Retrieve and filter data from relational databases
- Aggregate transaction data using SQL
- Combine information from multiple tables
- Use subqueries for comparative analysis
- Apply Window Functions for ranking
- Simplify complex queries using CTE
- Classify data using CASE WHEN
- Write more structured and advanced SQL queries

---

## 💡 Key Takeaway

One of the most important lessons from this assignment is that advanced SQL techniques make it easier to analyze complex relational data.

Features such as subqueries, Window Functions, and CTEs allow complex problems to be broken down into more manageable steps.

This assignment also showed how SQL can be used not only to retrieve data, but also to perform analysis, ranking, aggregation, and classification directly within a database.


