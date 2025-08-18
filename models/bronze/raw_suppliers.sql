{{
  config(
    materialized = 'table'
    )
}}
select
    country,
    supplier_id,
    contact_email,
    supplier_name,
    established_date

from {{ source('inventory','suppliers') }}