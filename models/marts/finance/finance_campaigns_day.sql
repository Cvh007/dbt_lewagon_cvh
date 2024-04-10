Select
date_date
, ROUND((operational_margin - ads_cost),1) as ads_margin
, avg_basket
, operational_margin
, ads_cost
, revenue
from
{{ref("int_campaigns_day")}}
Join 
{{ref("finance_days")}}
Using (date_date)
Order by
date_date desc