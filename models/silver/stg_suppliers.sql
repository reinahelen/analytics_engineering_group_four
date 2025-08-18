{{
  config(
    materialized='table'
  )
}}

select
    CAST(country AS VARCHAR(50)) AS country,
    CAST(supplier_id AS VARCHAR(50)) AS supplier_id,
    CAST(contact_email AS VARCHAR(255)) AS contact_email,
    CAST(supplier_name AS VARCHAR(255)) AS supplier_name,
    established_date
from {{ ref('raw_suppliers') }}


