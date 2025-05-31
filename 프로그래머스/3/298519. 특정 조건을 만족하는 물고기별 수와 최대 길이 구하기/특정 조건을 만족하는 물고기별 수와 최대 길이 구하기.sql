-- 코드를 작성해주세요
# select COUNT(ID) as FISH_COUNT, MAX(IFNULL(LENGTH,10)) as MAX_LENGTH, FISH_TYPE
# from FISH_INFO
# group by FISH_TYPE
# having  AVG(IFNULL(LENGTH,10)) >= 33
# order by FISH_TYPE

select 
count(ID) as FISH_COUNT,
max(COALESCE(LENGTH,10)) as MAX_LENGTH,
FISH_TYPE
from FISH_INFO
group by FISH_TYPE
having avg(COALESCE(LENGTH,10)) >= 33
order by FISH_TYPE