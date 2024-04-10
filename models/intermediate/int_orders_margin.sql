select
orders_id
, date_date
, ROUND (Sum (revenue),2) as revenue
, ROUND (Sum (quantity),2) as quantity
, ROUND (Sum (quantity*purchase_price),2) as purchase_cost
, ROUND (Sum (margin),2) as margin
From
{{ref("int_sales_margin")}}
Group by orders_id, date_date
Order by date_date desc