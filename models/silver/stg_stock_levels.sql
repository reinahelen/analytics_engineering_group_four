{{
  config(
    materialized='table'
  )
}}

select
    CAST(stock_id AS VARCHAR(255)) AS stock_id,
    CAST(product_id AS VARCHAR(255)) AS product_id,
    CAST(warehouse_id AS VARCHAR(255)) AS warehouse_id,
    max_stock,
    last_updated,
    reorder_point,
    quantity_on_hand
from {{ ref('raw_stock_levels') }}