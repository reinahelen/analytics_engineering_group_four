{{
  config(
    materialized='table'
  )
}}

select
    cast(movement_id as varchar(255)) movement_id,
    cast(product_id as varchar(255)) product_id,
    cast(WAREHOUSE_ID as varchar(255)) warehouse_id,
    movement_date,
    movement_type,
    reference_doc,
    Reason
from {{ ref('raw_stock_movements') }}
