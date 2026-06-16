
#  End-to-End E-Commerce Sales Analysis

> A complete data analytics pipeline — from raw, messy transactional data to a polished, interactive Power BI dashboard — simulating the full workflow of a business analyst.

---

##  Project Overview

This project performs a full-cycle analysis of an e-commerce sales dataset covering **2023–2025**, with over **200 order records** across multiple product categories, payment methods, and customer segments.

The goal was to answer real business questions:
- Which products and months drive the most revenue?
- Which customer segments and referral channels are most valuable?
- How effective are discount strategies?
- What does the order fulfilment landscape look like?

The project is structured across **four tasks**, each representing a stage in a real analytics pipeline.

---

##  Project Structure

```
ecommerce-sales-analysis/
│
├── data/
│   ├── Task_1_Original_Data.xlsx        # Raw dataset and cleaned dataset
│   └── Task_2_Cleaned_Data.xlsx         # Cleaned and transformed dataset
│
├── sql/
│   └── Task_3_Analysis_Queries.sql      # All business analysis queries
│
├── dashboard/
│   └── Task_4_Dashboard.pbix            # Interactive Power BI dashboard
│
├── screenshots/
│   └── dashboard_preview.png            # Dashboard preview image
│
└── README.md
```

---

## Workflow & Tasks

### Task 1 — Raw Data Assessment (`Task_1_Original_Data.xlsx`)

The original dataset contained several quality issues that needed to be addressed before analysis:

- Dates stored as **Excel serial numbers** instead of readable date values
- **Missing `DiscountType`** values — blank cells where "No Coupon" should be recorded
- **No Year or Month columns** — required for time-series analysis
- Inconsistent or null entries in the `CouponCode` field

---

### Task 2 — Data Cleaning & Transformation (`Task_2_Cleaned_Data.xlsx`)

Cleaned and enriched the dataset in Excel. Key transformations applied:

| Issue | Fix Applied |
|---|---|
| Serial number dates | Converted to proper date format |
| Missing `DiscountType` | Filled nulls with `"None"` |
| Missing `CouponCode` | Standardised as `"No Coupon"` |
| No time dimensions | Extracted `Year` and `Month` columns |

**Result:** A clean, analysis-ready dataset with **17 columns** including: `OrderID`, `Date`, `Year`, `Month`, `CustomerID`, `Product`, `Quantity`, `UnitPrice`, `TotalPrice`, `PaymentMethod`, `OrderStatus`, `DiscountType`, `ReferralSource`, and more.

---

### Task 3 — SQL Business Analysis (`Task_3_Analysis_Queries.sql`)

Performed structured business analysis using **MySQL**. Queries are grouped by theme:

####  Overview Metrics
- Total number of orders
- Total unique customers
- Distinct products and payment methods
- Total revenue, average order value, highest and lowest order values

####  Time-Based Analysis
- Revenue by **month** (ranked highest to lowest)
- Revenue by **year**

####  Product Performance
- Total quantity sold per product
- Revenue generated per product
- Order count per product

####  Customer Behaviour
- Orders per customer (identifying repeat buyers)
- Customers with more than one order (`HAVING` clause)

####  Payment Methods
- Most used payment methods
- Revenue contribution by payment method

####  Discount & Coupon Analysis
- Revenue breakdown by discount type

####  Referral Source Analysis
- Most effective referral channels by customer volume
- Most effective referral channels by revenue generated

####  Cart Behaviour
- Average cart size (items per order)
- Average spending by cart size

---

### Task 4 — Power BI Dashboard (`Task_4_Dashboard.pbix`)

Built an interactive executive dashboard in **Power BI** that visualises the findings from the SQL analysis. The dashboard includes:

- **Revenue Overview** — KPIs for total revenue, order count, average order value
- **Sales Trends** — Monthly and yearly revenue line/bar charts
- **Product Performance** — Revenue and quantity comparisons across product categories
- **Customer Insights** — Repeat customer rates and order distributions
- **Payment Method Breakdown** — Usage and revenue share by payment type
- **Referral Source Effectiveness** — Channel performance by customers and revenue
- **Order Status Distribution** — Delivered vs. Pending vs. Cancelled vs. Returned

---

##  Key Findings

- **Monitors and Tablets** were among the top-performing products by both quantity sold and total revenue.
- **Credit Card and Debit Card** were the dominant payment methods, collectively accounting for the majority of transactions.
- **Facebook and Instagram** drove the highest customer acquisition via referrals.
- **SAVE10** was the most frequently used coupon code, though **FREESHIP** orders also showed strong revenue contribution.
- A notable proportion of customers placed **more than one order**, indicating repeat purchase behaviour worth targeting with loyalty campaigns.
- **Cancellation and return rates** were significant enough to warrant further investigation into fulfilment or product-fit issues.

---

##  Tools & Technologies

| Tool | Purpose |
|---|---|
| **Microsoft Excel** | Data cleaning, transformation, and feature engineering |
| **MySQL** | Business analysis via structured SQL queries |
| **Power BI** | Interactive dashboard and data visualisation |

---

## 💡 Skills Demonstrated

- Data wrangling and quality assessment
- Feature engineering (date decomposition, null handling, standardisation)
- SQL querying — aggregations, filtering, grouping, subqueries
- Business metrics definition and calculation (AOV, revenue by segment, repeat rate)
- Dashboard design and visual storytelling
- Translating raw data into actionable business recommendations

---

## 🚀 How to Explore This Project

1. **Start with** `Task_1_Original_Data.xlsx` to see the raw data
2. **Compare it with** `Task_2_Cleaned_Data.xlsx` to understand the cleaning decisions
3. **Open** `Task_3_Analysis_Queries.sql` in any MySQL client (e.g. MySQL Workbench) and run the queries against the cleaned dataset
4. **Open** `Task_4_Dashboard.pbix` in [Power BI Desktop](https://powerbi.microsoft.com/desktop/) to explore the interactive dashboard

---

##  Author

**Fagbola Patricia**  
Data Analyst | Excel · SQL · Power BI  

📧 fagbola.pt@gmail.com  
🔗https://www.linkedin.com/in/patricia-fagbola-656566387?utm_source=share_via&utm_content=profile&utm_medium=member_android   


---

##  License

This project is for portfolio and educational purposes.
