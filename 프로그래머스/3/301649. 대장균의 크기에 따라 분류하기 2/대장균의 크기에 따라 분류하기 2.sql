-- 코드를 작성해주세요
select ID,
    case
        when ntile(4) over (order by SIZE_OF_COLONY) = 1 then 'LOW'
        when ntile(4) over (order by SIZE_OF_COLONY) = 2 then 'MEDIUM'
        when ntile(4) over (order by SIZE_OF_COLONY) = 3 then 'HIGH'
        when ntile(4) over (order by SIZE_OF_COLONY) = 4 then 'CRITICAL'
    end as COLONY_NAME
from ECOLI_DATA
order by 1