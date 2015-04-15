select
  c.candidate_id
  ,cei.trcd
from
  candidate c
  inner join candidate_entry_info cei
    on c.candidate_id = cei.candidate_id
    and cei.trcd is not null
where
  c.candidate_status_cd = 'ACT'
order by
  c.ins_datetime
;


