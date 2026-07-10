# FinTech Banking Analytics Platform — SQL + Power BI

## Project Overview

This project demonstrates an end-to-end **FinTech analytics solution** built using SQL and Power BI.

The goal is to transform raw banking transaction data into meaningful business insights by building a structured relational database, performing advanced SQL analysis, and creating interactive Power BI dashboards.

The project showcases real-world analytics workflows including:

- Data modeling
- SQL transformations
- Complex joins
- Views and aggregations
- Customer analytics
- Transaction analysis
- Financial KPIs
- Power BI dashboards
- DAX measures

---

# Business Scenario

A digital banking organization wants to analyze customer behavior, transaction trends, merchant performance, and financial activity.

The analytics team needs visibility into:

- Customer spending patterns
- Transaction volumes
- Revenue trends
- Payment method adoption
- Merchant performance
- Branch-level performance
- Customer segmentation

This project builds the data foundation and reporting layer required to answer these business questions.

---

# Project Structure

```
FinTech-Banking-Analytics/
│
├── Data/
│   ├── Raw/
│   │   ├── Customers.csv
│   │   ├── Accounts.csv
│   │   ├── Transactions.csv
│   │   ├── Merchants.csv
│   │   ├── Branches.csv
│   │   ├── PaymentMethods.csv
│   │   └── TransactionCategories.csv
│
├── SQL/
│   ├── Database_Setup.sql
│   ├── Table_Creation.sql
│   ├── Data_Loading.sql
│   ├── Views.sql
│   └── Analysis_Queries.sql
│
├── PowerBI/
│   └── FinTech_Analytics_Dashboard.pbix
│
├── Documentation/
│   └── Data_Model.png
│
└── README.md
```

---

# Tech Stack

## Database
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

## Analytics & Visualization
- Microsoft Power BI
- DAX
- Power Query

## Data Processing
- CSV datasets
- Relational data modeling

---

# Data Model

The database follows a relational schema containing:

### Customer Domain
- Customers
- Accounts

### Transaction Domain
- Transactions
- Transaction Categories
- Payment Methods

### Business Domain
- Merchants
- Branches


### Relationships

Example relationships:

```
Customers
    |
    |
Accounts
    |
    |
Transactions
    |
    |------------- Merchants
    |
    |------------- Payment Methods
    |
    |------------- Transaction Categories
```

---

# SQL Implementation

The SQL layer demonstrates production-style analytics development.

## Database Design

Implemented:

- Tables
- Primary keys
- Foreign keys
- Constraints
- Data relationships


## SQL Concepts Demonstrated

### Joins

### Views

### Aggregations

### Advanced SQL



# Power BI Dashboard

The Power BI layer transforms SQL outputs into interactive business dashboards.

## Dashboard Pages

### Executive Overview

KPIs:

- Total Transaction Volume
- Total Transaction Value
- Active Customers
- Average Transaction Value


### Customer Analytics

Insights:

- Customer spending behavior
- High-value customers
- Customer segmentation
- Account activity


### Transaction Analysis

Visualizations:

- Monthly transaction trends
- Transaction category breakdown
- Payment method adoption


### Merchant Analytics

Insights:

- Top-performing merchants
- Revenue contribution
- Merchant transaction volume


### Branch Performance

Analysis:

- Branch transaction activity
- Regional performance
- Customer distribution

---

#  DAX Measures

The project includes custom DAX calculations for:

- Total Revenue
- Transaction Count
- Average Transaction Value
- Customer Growth
- Monthly Trends
- Ranking Metrics


#  Key Business Questions Answered

This project helps answer:

### Customer Insights

- Who are the highest-value customers?
- Which customers drive the most transaction volume?
- How does customer activity change over time?


### Transaction Insights

- What are the most common transaction categories?
- Which payment methods are preferred?
- How are transaction values trending?


### Merchant Insights

- Which merchants generate the most activity?
- Which categories contribute the most revenue?


### Operational Insights

- Which branches perform best?
- Where are transaction volumes concentrated?

---

#  Future Enhancements

Potential improvements:

- Add automated ETL pipeline
- Implement data quality checks
- Add Azure SQL deployment
- Build Fabric Lakehouse version
- Add customer churn prediction model
- Add fraud detection analytics
- Implement real-time transaction monitoring

---

# 👨Author

**Atharva Moghe**

Data Analytics | SQL | Power BI | Microsoft Fabric

---

⭐ If you found this project useful, feel free to explore the repository and connect!