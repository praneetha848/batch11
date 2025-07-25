{{ config(
    materialized="table",
    pre_hook="delete * from  {{this}} where USER_ID =null", 
    post_hook="TRUNCATE TABLE {{ref('orders')}}"
) }}

WITH tb1 as(
  select 
 * from {{ref('orders')}})
select * from tb1