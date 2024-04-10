With finance as(
Select
date_date
, Count (orders_id) as transaction_nb
, Round(Sum (revenue),1) as revenue
, Round(Sum (margin),1) as margin
, Round(Sum (operational_margin),1) as operational_margin
From 
{{ref("int_orders_operational")}}
Group by date_date
)

Select
date_date
, transaction_nb
, revenue
, Round((revenue/transaction_nb),1) as avg_basket
, margin
, operational_margin
From finance
Order by date_date desc