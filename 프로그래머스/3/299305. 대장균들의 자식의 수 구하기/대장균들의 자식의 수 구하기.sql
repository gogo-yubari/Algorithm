-- 코드를 작성해주세요

with  CC as (
    select PARENT_ID, count(PARENT_ID) as CHILD_COUNT
    from ECOLI_DATA
    where PARENT_ID is not null -- 적어주는게 좋대
    group by PARENT_ID
)

select ID, coalesce(CHILD_COUNT,0) as CHILD_COUNT
from ECOLI_DATA a
left join CC b
on a.ID = b.PARENT_ID
