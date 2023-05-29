select
  dispatching_base_num,
  sum(tips) as tips
from
  {{ source('nytaxi', 'fhvhv') }}
group by
  dispatching_base_num
