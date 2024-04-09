select
orders_id
, date_date
, Sum (revenue) as revenue
, Sum (quantity) as quantity
, Sum (quantity*purchase_price) as purchase_cost
, Sum (margin) as margin
From
{{ref("int_sales_margin")}}
Where orders_id = 1002561
