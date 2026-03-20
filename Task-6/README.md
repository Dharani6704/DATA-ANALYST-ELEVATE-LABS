## Objective
Analyze monthly revenue and order volume using aggregate functions in PostgreSQL.

## Tools Used
- PostgreSQL
- pgAdmin 4

## Steps Completed

1. **Created the `online_sales` table** with columns:
   - `order_id` (Primary Key)
   - `order_date` (Date)
   - `amount` (Order value)
   - `product_id` (Product identifier)

2. **Inserted sample sales data** for multiple months in 2025.

3. **Used SQL aggregate functions**:
   - `EXTRACT(MONTH FROM order_date)` to get the month.
   - `EXTRACT(YEAR FROM order_date)` to separate data by year.
   - `SUM(amount)` to calculate total revenue.
   - `COUNT(DISTINCT order_id)` to get total orders.

4. **Grouped data** using `GROUP BY year, month` and **sorted results** with `ORDER BY`.

5. **Filtered results** for specific years using `WHERE` with `EXTRACT(YEAR ...)`.
