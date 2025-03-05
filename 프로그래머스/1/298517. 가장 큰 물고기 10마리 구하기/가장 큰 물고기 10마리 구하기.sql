-- 코드를 작성해주세요

#CREATE INDEX idx_fish_length ON FISH_INFO (LENGTH DESC, ID);
-- 데이터가 많을 경우에는 인덱스 생성으로 성능 향상

select ID, LENGTH
from FISH_INFO
order by 2 desc, 1
limit 10;

