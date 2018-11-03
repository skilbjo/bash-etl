with dates as (
  select cast(':date' as date) as now
), _currency as (
  select
    currency,
    cast(rate as decimal(24,14)) as rate
  from
    dw.currency_fact
  where
    s3uploaddate = ( select now from dates )
)
select
  *
from
  _currency
