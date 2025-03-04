-- 코드를 작성해주세요
# select ID, FISH_NAME, max(LENGTH)
# from FISH_INFO as a
# join FISH_NAME_INFO as b
# on a.FISH_TYPE = b.FISH_TYPE
# where LENGTH is not null
# group by a.FISH_TYPE 
# 그룹바이는 집계함수라 그룹화컬럼,함수컬럼만 출력가능

with maxfish as (    
    select FISH_TYPE, max(LENGTH) as ML
    from FISH_INFO
    group by FISH_TYPE
)
select ID, FISH_NAME, LENGTH
from FISH_INFO a

join maxfish m
on a.FISH_TYPE = m.FISH_TYPE 
and a.LENGTH = m.ML

join FISH_NAME_INFO b
on a.FISH_TYPE = b.FISH_TYPE

where LENGTH is not null
order by 1
