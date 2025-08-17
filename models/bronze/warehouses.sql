{{
  config(
    materialized = 'view'
    )
}}

with raw_warehouses as (
select * from {{ source('inventory','warehouses') }}
)
select
    city,
    state,
    manager,
    capacity,
    warehouse_id,
    warehouse_name

from raw_warehouses