-- update dw.equities_fact
-- set created_at_ts = mongoid_to_timestamp(id)
-- where id in (
  -- select id
  -- from dw.equities_fact
  -- where created_at_ts is null
  -- limit 1000
-- );

update dw.equities_fact
set
  created_at    = mongoid_to_timestamp(id)::date,
  created_at_ts = mongoid_to_timestamp(id)
where id in (
  select id
  from dw.equities_fact
  where created_at is null
  -- limit 1000000
);

create index if not exists projects_created_at_idx on dw.equities_fact using btree (created_at);
