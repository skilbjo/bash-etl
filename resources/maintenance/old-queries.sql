with list as (
  select
    pid,
    age(clock_timestamp(),query_start) query_age,
    usename,
    query
  from
    pg_stat_activity
  where
    query not ilike '%pg_stat_activity%'
    and query not ilike '%pg_settings%'
    and usename not in ('rdsadmin')
  order by
    query_start
)
select
  pid
from
  list
where
  query_age > interval '8 hour';
