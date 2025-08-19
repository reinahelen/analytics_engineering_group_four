{{
  config(
    materialized='table'
  )
}}

select
    stock_id, 
    max_stock,
    product_id,
    last_updated,
    warehouse_id,
    reorder_point,
    quantity_on_hand
from {{ source('inventory','stock_levels') }}
