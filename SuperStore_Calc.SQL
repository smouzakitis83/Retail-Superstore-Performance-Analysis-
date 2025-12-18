/*Shows how efficiently each product or order generates profit in descending order. 
Which categories, regions, or customer segments generate the most efficient returns.*/

SELECT
  Ship_Mode,
  segment,
  country,
  state,
  category,
  sub_category,
  sales,
  profit,
  ROUND(profit / NULLIF(sales, 0), 4) AS profit_margin_pct
FROM `retailsupermarket.Superstore.SampleSuperstore`
ORDER BY profit_margin_pct DESC




/* Shows how much revenue was lost due to discounts. Measures how discounts reduce revenue */

SELECT
  ship_mode,
  segment,
  country,
  state,
  category,
  sub_category,
  sales,
  discount,
  profit,
  ROUND(sales * discount, 2) AS discount_impact_amount
FROM `retailsupermarket.Superstore.SampleSuperstore`




/*This is an adjusted final sale price after discount is applied.
Gives a more realistic revenue measure after discounts. */

SELECT
  ship_mode,
  segment,
  country,
  state,
  city,
  category,
  sub_category,
  sales,
  discount,
  profit,
  ROUND(sales * (1 - discount), 2) AS sales_after_discount
  FROM `retailsupermarket.Superstore.SampleSuperstore`




/* Divides the profit by the quantity sold to show how much profit is earned per individual unit. 
It helps identify which products, categories, or segments generate the highest profitability on a per-unit basis. */

SELECT
  ship_mode,
  segment,
  country,
  state,
  category,
  sub_category,
  sales,
  discount,
  profit,
  ROUND(profit / NULLIF(quantity, 0), 2) AS profit_per_unit,
FROM `retailsupermarket.Superstore.SampleSuperstore`




/* Calculates how much revenue is generated for each individual unit sold by dividing total 
sales by quantity. It helps identify which products or categories deliver the highest revenue */

SELECT
  ship_mode,
  segment,
  country,
  state,
  category,
  sub_category,
  sales,
  discount,
  profit,
  ROUND(sales / NULLIF(quantity, 0), 2) AS sales_per_unit
FROM `retailsupermarket.Superstore.SampleSuperstore`





