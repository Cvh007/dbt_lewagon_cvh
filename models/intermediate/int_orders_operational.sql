select 
orders_id
, date_date
, Round (SUM((margin + shipping_fee - logcost - ship_cost)),2) as operational_margin
, ROUND (Sum (revenue),2) as revenue
, ROUND (Sum (quantity),2) as quantity
, ROUND (Sum (purchase_cost),2) as purchase_cost
, ROUND (Sum (margin),2) as margin
FROM 
{{ref("int_orders_margin")}}
Join {{ref("stg_raw__ship")}}
Using (orders_id)
Group by orders_id, date_date
Order By date_date desc