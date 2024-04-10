Select
extract(month from date_date) as datemonth
, ROUND(Sum(ads_margin),1) as ads_margin
, ROUND(Sum(avg_basket),1) as avg_basket
, ROUND(SUM(operational_margin),1) as operational_margin
, ROUND(SUM(ads_cost),1) as ads_cost
, ROUND(SUM(revenue),1) as revenue
from
{{ref("finance_campaigns_day")}}
GROUP by datemonth
ORDER by datemonth desc