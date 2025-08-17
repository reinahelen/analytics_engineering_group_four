with raw_stock_movements as (
select * from {{ source('inventory','stock_movements') }}
)
select
    reason, 
    quantity,
    product_id,
    movement_id,
    warehouse_id,
    movement_date,
    movement_type,
    reference_doc
from raw_stock_movements