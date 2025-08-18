{{
  config(
    materialized = 'table'
    )
}}
select
    city,
    state,
    manager,
    capacity,
    warehouse_id,
    warehouse_name
from {{ source('inventory','warehouses') }}