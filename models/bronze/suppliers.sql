with raw_suppliers as (
select * from {{ source('inventory','suppliers') }}
)
select
    country, 
    supplier_id, 
    contact_email, 
    supplier_name,
    established_date
from raw_suppliers