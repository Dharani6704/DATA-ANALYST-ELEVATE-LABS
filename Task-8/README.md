# Task-8-Simple-Sales-Dashboard-Design

# Superstore Sales Dashboard – Tableau

## Overview
This dashboard visualizes key insights from the Sample Superstore dataset, including sales trends, regional performance, product category distribution, and sales-profit analysis by customer segments.  
It combines multiple chart types in a single interactive dashboard for better decision-making.

---

## Steps to Create the Dashboard

### 1. **Data Connection**
- Open Tableau and connect to the built-in `Sample - Superstore` dataset.

### 2. **Sales Over Month (Line Chart)**
- Drag `Order Date` to **Columns** → change to **Month**.
- Drag `Sales` to **Rows**.
- Change mark type to **Line**.
- Format axis for better readability.

### 3. **Sales by Region (Bar Chart)**
- Drag `Region` to **Columns**.
- Drag `Sales` to **Rows**.
- Mark type: **Bar**.
- Apply colors by `Region` for visual distinction.

### 4. **Sales by Category (Donut Chart)**
- Drag `Category` to **Color**.
- Drag `Sales` to **Angle** and **Label**.
- Change mark type to **Pie**.
- Create a calculated field `Dummy` with value `1`.
- Place `Dummy` in **Rows** twice.
- First Marks card: Keep pie chart with category colors and labels.
- Second Marks card: Change to **Circle**, color white, reduce size (to form donut hole).
- Combine using **Dual Axis** and hide headers.

### 5. **Sales and Profit by Order Date (Segment-Wise Line Chart)**
- Drag `Order Date` to **Columns** → change to **Year**.
- Drag both `Sales` and `Profit` to **Rows**.
- Place `Segment` on **Columns** to split charts by segment.
- Use **Measure Names** and **Measure Values** to plot both Sales and Profit lines.
- Format dual-axis for proper alignment.

### 6. **Combine into Dashboard**
- Create a new **Dashboard** in Tableau.
- Drag each sheet into the dashboard layout:
  - Sales Over Month (top)
  - Sales by Region (left middle)
  - Sales by Category (right middle)
  - Sales & Profit by Order Date (bottom)
- Adjust sizing, alignment, and spacing for a clean look.
- Add titles to each visualization.

---

## Features
- **Line Charts** for trend analysis.
- **Bar Chart** for comparing regions.
- **Donut Chart** for category sales distribution.
- **Dual-Axis Line Charts** for sales vs. profit comparison.
- Interactive filtering and tooltips.

---

## Tools Used
- Tableau Desktop
- Sample - Superstore dataset (bundled with Tableau)

---

## Outcome
The dashboard provides a comprehensive view of sales performance over time, by region, and by category, along with profit trends for different customer segments.
