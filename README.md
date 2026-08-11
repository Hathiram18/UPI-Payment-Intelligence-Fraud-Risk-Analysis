# -UPI-Payment-Intelligence-Fraud-Risk-Analysis
Developed an end-to-end analytics solution on 7 UPI datasets containing 10,000+ transactions using SQL, Python, Statistics, and Power BI, identifying fraud risk drivers, reducing operational inefficiencies, and generating business recommendations to improve fraud monitoring and reduce transaction risk.


## Project Overview

This project analyzes UPI transaction data to uncover fraud patterns, customer behavior, merchant risks, transaction failures, and operational performance. Using Excel, SQL, Python, Statistics, and Power BI, an end-to-end analytics pipeline was developed to transform raw transactional data into actionable business insights.

## Business Problem

With the rapid growth of digital payments, UPI platforms face challenges related to:

* Fraud detection and prevention
* Transaction failures
* Merchant risk management
* Device security vulnerabilities
* Customer experience and trust

The objective was to identify high-risk segments, monitor business performance, and provide data-driven recommendations to improve platform security and operational efficiency.

---

## Dataset Information

The project integrates 7 datasets:

1. Customer Master
2. Device Information
3. UPI Account Details
4. Merchant Information
5. UPI Transaction History
6. Customer Feedback Surveys
7. Fraud Alert History

### Dataset Scale

* 10,000 Customers
* 12,000 Devices
* 12,000 UPI Accounts
* 500 Merchants
* 10,000 Transactions
* 4,000 Customer Feedback Records
* 2,000 Fraud Alerts

---

## Tools & Technologies Used

### Excel

* Data validation
* Data quality checks
* Missing value analysis
* Foreign key validation
* Data cleaning

### SQL

* Database design (DDL)
* Table creation with constraints
* Data ingestion
* Data extraction using joins and aggregations

### Python

* Data cleaning and transformation
* Exploratory Data Analysis (EDA)
* Fraud analysis
* Feature engineering
* Statistical analysis
* Data visualization

### Statistics

* T-Test
* ANOVA
* Chi-Square Test
* Correlation Analysis
* Hypothesis Testing

### Power BI

* Executive Dashboard
* Fraud Monitoring Dashboard
* KPI Tracking
* Interactive Visualizations

---

## Key KPIs Analyzed

* Total Transaction Volume
* Average Transaction Amount
* Fraud Rate
* Transaction Failure Rate
* Merchant Fraud Ratio
* Device Fraud Ratio
* Customer Activity
* Merchant Activity
* Device Risk Analysis

---

## Data Analysis Workflow

### 1. Business Understanding

Defined analytical goals and KPIs aligned with fraud detection and operational performance.

### 2. Data Validation

Validated customer, merchant, device, account, and transaction relationships.

### 3. SQL Database Design

Created relational database schema and loaded all datasets.

### 4. Python Data Analysis

Performed:

* Data cleaning
* Data transformation
* Feature engineering
* Fraud pattern analysis
* Trend analysis
* Risk segmentation

### 5. Statistical Analysis

Validated business hypotheses using:

* T-Test for transaction amount comparison
* ANOVA for merchant fraud analysis
* Chi-Square tests for fraud associations
* Correlation analysis between risk score and fraud occurrence

### 6. Power BI Dashboard Development

Created interactive dashboards with filters for:

* Device Type
* Merchant
* Region
* Time Period
* Transaction Status

---

## Major Insights

### 1. Device Security Risk

* Feature phones and Android devices showed higher fraud activity.
* Rooted devices were associated with significantly higher fraud transactions.

### 2. Seasonal Fraud Trend

* Fraud incidents peaked during June–August.
* July recorded the highest monthly fraud volume.

### 3. Transaction Failure Analysis

* Overall transaction failure rate was approximately 5.87%.
* Major failure reasons included network issues and incorrect PIN entries.

### 4. Transaction Behavior

* Send transactions contributed ~35% of total volume.
* Receive transactions contributed ~34% of total volume.
* Peer-to-peer and merchant payments represented major fraud exposure areas.

### 5. Merchant Risk Concentration

* A small group of merchants accounted for a disproportionately high share of fraud activity.
* High-risk merchant clusters were identified for monitoring and review.

---

## Business Recommendations

### Strengthen Device Security

* Restrict rooted/jailbroken devices.
* Implement device risk scoring.

**Expected Impact:** Reduce fraud transactions by 15–25%.

### Merchant Risk Monitoring

* Introduce merchant risk scoring.
* Enhance merchant onboarding and KYC validation.

**Expected Impact:** Reduce merchant-related fraud exposure by 20%+.

### Improve Failure Handling

* Optimize payment gateway retries.
* Improve network timeout management.

**Expected Impact:** Reduce failure rate from ~5.8% to below 3%.

### Peak Season Fraud Monitoring

* Deploy real-time fraud detection during high-risk periods.
* Increase monitoring during seasonal spikes.

### Customer Awareness Programs

* Educate users on scam prevention and safe UPI practices.
* Improve customer trust and platform adoption.

---

## Dashboard Features

### Executive Dashboard

* Total Transactions
* Fraud Rate
* Failure Rate
* Average Transaction Value
* Device-wise Analysis
* Merchant-wise Analysis
* Monthly Trends

### Fraud Risk Dashboard

* Fraud Alerts Trend
* High-Risk Devices
* High-Risk Merchants
* Fraud Distribution Analysis
* Root Cause Investigation

---

## Project Outcome

This project demonstrates how data analytics can be leveraged to improve fraud detection, operational efficiency, and customer trust in digital payment ecosystems. By combining SQL, Python, Statistics, Excel, and Power BI, the project delivers actionable business intelligence and strategic recommendations for a modern UPI platform.
