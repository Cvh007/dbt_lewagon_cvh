Select
date_date
, ROUND(Sum(ads_cost),1) as ads_cost
, ROUND(Sum(impression),1) as impression
, ROUND(Sum(click),1) as click
from
{{ref("int_campaigns")}}
Group by date_date
Order by date_date desc