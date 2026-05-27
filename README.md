# Restaurant Operations Intelligence System

## Overview
An end-to-end data analytics project built around real fast food 
restaurant operations. The goal is to help store managers make 
better decisions about staffing, food waste, and sales targets 
using data — not gut feeling.

All base sales figures and operational patterns are derived from 
real experience as an Assistant Manager at McDonald's Canada.

## Problem Statement
Store managers make daily decisions about:
- How many staff to schedule per shift
- How much food to prep
- Why sales targets were missed

Most of these decisions are based on experience rather than data. 
This project builds the analytics layer that was missing.

## What This Project Covers
| Layer | Type | Status |
|---|---|---|
| Data Generation | Python | ✅ Complete |
| Database Design | MySQL | 🔄 In Progress |
| Exploratory Analysis | Python / Pandas | ⏳ Coming Soon |
| Dashboard | Power BI | ⏳ Coming Soon |

## Data Model
Star schema with 5 tables:
- shifts (dimension)
- sales (fact)
- labour (fact)
- waste (fact)
- inventory (fact)

## Business Rules Encoded
- 8 shifts covering a full 24hr operational day (4am to 4am)
- 3 day types: Weekday / Friday / Weekend
- Seasonal weather probabilities (Ontario, Canada)
- Public holidays with individual sales multipliers
- Business seasons: Summer Vacation, Christmas, Back to School, Winter Slump

## Tech Stack
- Python (Pandas, NumPy)
- MySQL
- Power BI
- Jupyter Notebook
- Git & GitHub

## Project Status
🚧 In Progress — updating regularly

## Author
Sooraj Shaju
[LinkedIn](https://linkedin.com/in/sooraj77) | 
[GitHub](https://github.com/sooraj-L)
