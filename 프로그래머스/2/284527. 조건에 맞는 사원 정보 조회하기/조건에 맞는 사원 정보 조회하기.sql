-- 코드를 작성해주세요
with ranked as(
    select sum(SCORE) as SCORE, e.EMP_NO, e.EMP_NAME, e.POSITION, e.EMAIL,
            rank() over (order by sum(SCORE) desc) as rk
    from HR_EMPLOYEES e
    join HR_GRADE g on e.EMP_NO = g.EMP_NO
    where g.YEAR ='2022'
    group by g.EMP_NO, g.YEAR
)
select SCORE, EMP_NO, EMP_NAME, POSITION, EMAIL
from ranked
where rk = 1


# limit 쓰면 동점자 있을 경우 오류
# join HR_DEPARTMENT d on e.DEPT_ID = d.DEPT_ID