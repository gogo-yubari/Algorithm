-- 코드를 작성해주세요
select count(*) FISH_COUNT
from FISH_INFO a
join FISH_NAME_INFO b
on a.FISH_TYPE = b.FISH_TYPE
where b.FISH_NAME in ('BASS','SNAPPER')

# where a.FISH_TYPE in (0,1)
# FISH_NAME_INFO 테이블이 다음과 같다면
-- 가정이라서 다른 데이터셋에선 다를 수 있어서 안된다고함;;