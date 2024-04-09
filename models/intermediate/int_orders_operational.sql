select 
orders_id
, date_date
, Round (SUM((margin + shipping_fee) - (logcost - ship_cost)),2) as operational_margin
FROM 
{{ref("int_sales_margin")}}
Join {{ref("stg_raw__ship")}}
Using (orders_id)
Group by orders_id, date_date
Order By date_date desc