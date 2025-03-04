# -- 코드를 작성해주세요
# select ITEM_NAME
# trim(ITEM_NAME) as test
# from ITEM_INFO


select sum(PRICE) as TOTAL_PRICE
from ITEM_INFO
where RARITY = 'LEGEND'