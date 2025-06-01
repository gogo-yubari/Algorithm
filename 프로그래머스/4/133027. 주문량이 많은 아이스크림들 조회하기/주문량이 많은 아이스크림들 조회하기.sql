-- 코드를 입력하세요
with SORTED as (
    SELECT a.FLAVOR, SUM(a.TOTAL_ORDER) + SUM(b.TOTAL_ORDER) as TOTAL_ORDER
    FROM FIRST_HALF a
    join JULY b on a.FLAVOR = b.FLAVOR
    group by FLAVOR
    order by 2 desc
)
select FLAVOR
from SORTED
limit 3