-- 코드를 작성해주세요
with MAX_SIZE as (
    select  max(SIZE_OF_COLONY)  MS, YEAR(DIFFERENTIATION_DATE)  YEAR
    from ECOLI_DATA
    group by YEAR(DIFFERENTIATION_DATE)
)

select  YEAR, (MS - SIZE_OF_COLONY) as YEAR_DEV, ID 

from ECOLI_DATA a
join MAX_SIZE b 
on YEAR(a.DIFFERENTIATION_DATE) = b.YEAR

order by 1, 2




