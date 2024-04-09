select
*
, Round((revenue - (quantity * purchase_price)),2) as margin
From {{ref("stg_raw__sales")}}
Join {{ref("stg_raw__product")}}
Using (products_id)