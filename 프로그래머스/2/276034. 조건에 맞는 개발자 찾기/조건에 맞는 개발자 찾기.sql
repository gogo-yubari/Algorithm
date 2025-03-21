-- 코드를 작성해주세요
select distinct ID,	EMAIL, FIRST_NAME,	LAST_NAME
from DEVELOPERS d
join SKILLCODES s
on d.SKILL_CODE & s.CODE
where s.NAME in ('Python','C#')
order by 1
# 두 기술 모두 보유한 경우 중복출력되기 때문에 중복 제거를 해줘야함
# python, c#의 code가 256,1024로 고정된 게 아님
