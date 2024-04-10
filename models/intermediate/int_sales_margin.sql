With sales as(
select
products_id
, date_date
, orders_id
, revenue 
, quantity
, purchase_price
, Round((quantity * purchase_price),2) as purchase_cost
, Round((revenue - (quantity * purchase_price)),2) as margin
From {{ref("stg_raw__sales")}}
Join {{ref("stg_raw__product")}}
Using (products_id)
)

select
*
,  {{margin_percent(revenue, purchase_cost)}} as margin_percent
from sales