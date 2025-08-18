{{
  config(
    materialized='table'
  )
}}

select
    CAST(warehouse_id AS VARCHAR(50)) AS warehouse_id,
    CAST(warehouse_name AS VARCHAR(255)) AS warehouse_name,
    CAST(city AS VARCHAR(255)) AS city,
    CAST(state AS VARCHAR(50)) AS state,
    CAST(manager AS VARCHAR(50)) AS manager,
    capacity
from {{ ref('raw_warehouses') }}
