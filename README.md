# Restaurant Operations Intelligence System

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Python](https://img.shields.io/badge/Python-Data%20Generation-blue)
![MySQL](https://img.shields.io/badge/MySQL-Analysis-orange)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen)

## Overview
An end-to-end data analytics project built around real fast food restaurant operations. The goal is to help store managers make better decisions about staffing, food waste, and sales targets using data — not gut feeling.

All base sales figures and operational patterns are derived from real experience as an Assistant Manager at McDonald's Canada.

## Problem Statement
Store managers make daily decisions about:
- How many staff to schedule per shift
- How much food to prep
- Why sales targets were missed

Most of these decisions are based on experience rather than data. This project builds the analytics layer that was missing.

---

## Project Progress

| Layer | Tool | Status |
|---|---|---|
| Data Generation | Python (Pandas, NumPy) | ✅ Complete |
| Data Cleaning | Python | ✅ Complete |
| SQL Analysis | MySQL | ✅ Complete |
| Sales Dashboard | Power BI | ✅ Complete |
| Labour Dashboard | Power BI | ✅ Complete |
| Waste Dashboard | Power BI | ✅ Complete |

---

## Dataset
- **2,928 rows** across 3 tables (shifts_sales, labour, waste)
- **366 days** × **8 daily shift types**
- Generated using real McDonald's operational knowledge

### Shift Types
| Shift | Hours |
|---|---|
| Opening | 4am – 6am |
| Early Breakfast | 6am – 9am |
| Late Breakfast | 9am – 11am |
| Lunch | 11am – 2pm |
| Afternoon | 2pm – 5pm |
| Dinner | 5pm – 8pm |
| Late Night | 8pm – 11pm |
| Overnight | 11pm – 4am |

---

## Business Rules Encoded
- 8 shifts covering a full 24hr operational day (4am to 4am)
- 3 day types: Weekday / Friday / Weekend
- Seasonal weather probabilities (Ontario, Canada)
- Public holidays with individual sales multipliers
- Business seasons: Summer Vacation, Christmas, Back to School, Winter Slump
- Ontario minimum wage: $17.49/hr
- Target labour cost: 23% of sales

---

## Key Insights

### Sales
- **Lunch and Dinner** shifts drive the highest revenue across all seasons
- **Summer** season consistently outperforms all other seasons in sales
- **Weekday** sales (54%) outpace Weekend sales (46%) due to higher shift volume
- Sales performance tracks closely to target with minor seasonal variance

### Labour
- **Lunch and Dinner** shifts have the highest labour cost — reflecting peak hour demand
- Every shift shows negative staff variance — indicating the restaurant was consistently understaffed
- **Weekday** labour hours (57.7%) are higher than Weekend (42.3%)
- Actual labour cost ($682K) came in under target ($728K) across the year

### Waste
- **Dinner and Lunch** shifts generate the highest waste cost — linked to peak production volume
- **UHC Expiration** is the top waste reason — indicating over-preparation during busy periods
- Total waste cost ($113K) exceeded target ($94K) — a key area for operational improvement
- **Q1** has the lowest waste cost, while **Q3** (Summer) has the highest

---

## Data Model
Star schema with composite shift_key (date + shift_type):
- `shifts_sales` — fact table (sales KPIs)
- `labour` — fact table (staffing and labour cost KPIs)
- `waste` — fact table (waste cost and waste reason KPIs)
- `DateTable` — DAX-built date dimension

---

## Power BI Dashboard

### Page 1 — Sales Intelligence ✅
- KPI Cards: Total Sales, Target Sales, Achievement %, Sales Variance
- Sales by Shift (Bar Chart)
- Sales Trend Over Time (Line Chart)
- Sales by Day Type (Donut Chart)
- Sales by Weather Season (Column Chart)
- Sales vs Target by Quarter (Clustered Column Chart)
- Sales by Shift and Day Type (Matrix)

### Page 2 — Labour Intelligence ✅
- KPI Cards: Total Labour Cost, Target Labour Cost, Avg Labour %, Labour Cost Variance
- Labour Cost by Shift (Bar Chart)
- Labour Cost Trend Over Time (Line Chart)
- Staff Variance by Shift (Bar Chart)
- Labour Hours by Day Type (Donut Chart)
- Labour Cost vs Target by Quarter (Clustered Column Chart)
- Labour % vs Target (Gauge Chart)

### Page 3 — Waste Intelligence ✅
- KPI Cards: Total Waste Cost, Target Waste Cost, Avg Waste %, Waste Cost Variance
- Waste Cost by Shift (Bar Chart)
- Waste Cost Trend Over Time (Line Chart)
- Waste Cost by Reason (Bar Chart)
- Waste Cost by Day Type (Donut Chart)
- Waste Cost vs Target by Quarter (Clustered Column Chart)
- Waste % vs Target (Gauge Chart)

---

## DAX Measures
27+ measures built across 3 themes including:
- Total and Average KPIs for Sales, Labour and Waste
- Variance calculations (Actual vs Target)
- Achievement % measures
- Staffing gap analysis (Scheduled vs Actual)
- Shifts over/under target counts

---

## Tech Stack
- **Python** (Pandas, NumPy) — data generation and cleaning
- **MySQL** — SQL analysis (7 queries)
- **Power BI** — interactive dashboards and DAX measures
- **Git & GitHub** — version control

---

## Author
**Sooraj Shaju**
Graduate Certificate in Business Analytics — Cambrian College, Ontario
B.Sc. Computer Science — Calicut University

[LinkedIn](https://linkedin.com/in/sooraj77) | [GitHub](https://github.com/sooraj-L) | [Portfolio](https://sooraj-l.github.io)
