-- 코드를 작성해주세요
select distinct c.ID
from ECOLI_DATA a
join ECOLI_DATA b
on a.ID = b.PARENT_ID and a.PARENT_ID is null
join ECOLI_DATA c
on b.ID = c.PARENT_ID
order by 1


