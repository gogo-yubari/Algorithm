-- 코드를 작성해주세요
# select count(*) FISH_COUNT
# from FISH_INFO
# where LENGTH IS NULL


SELECT (COUNT(*) - COUNT(LENGTH)) AS FISH_COUNT
FROM FISH_INFO;
-- COUNT(LENGTH) : NULL을 자동으로 제외하고 count