{{
  config(
    materialized='table'
  )
}}

select
    reason, 
    quantity,
    product_id,
    movement_id,
    warehouse_id,
    movement_date,
    movement_type,
    reference_doc
from {{ source('inventory','stock_movements') }}
