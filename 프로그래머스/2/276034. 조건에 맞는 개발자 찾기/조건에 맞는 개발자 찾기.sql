-- 코드를 작성해주세요
select distinct ID,	EMAIL, FIRST_NAME,	LAST_NAME
from DEVELOPERS
where SKILL_CODE & 1280 > 0
order by 1
# 두 기술 모두 보유한 경우 중복출력되기 때문에 중복 제거를 해줘야함