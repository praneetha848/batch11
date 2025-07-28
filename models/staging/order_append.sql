{{ config(
    materialized="incremental",
    incremental_strategy="append",
) }}

select * from {{source('datafeed_shared_schema','raw_order')}}  
where id in (9,6,7,8)