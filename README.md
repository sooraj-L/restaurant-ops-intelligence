# Restaurant Operations Intelligence System

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Python](https://img.shields.io/badge/Python-Data%20Generation-blue)
![MySQL](https://img.shields.io/badge/MySQL-Analysis-orange)
![Status](https://img.shields.io/badge/Status-In%20Progress-green)

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
| Labour Dashboard | Power BI | 🔄 In Progress |
| Waste Dashboard | Power BI | ⏳ Coming Soon |

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

## Key Insights (Sales Dashboard)
- **Lunch and Dinner** shifts drive the highest revenue across all seasons
- **Summer** season consistently outperforms all other seasons
- **Weekday** sales (54%) outpace Weekend sales (46%) due to higher shift volume
- Sales performance tracks closely to target with minor seasonal variance

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

### Page 2 — Labour Intelligence 🔄
*Coming Soon*

### Page 3 — Waste Intelligence ⏳
*Coming Soon*

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
