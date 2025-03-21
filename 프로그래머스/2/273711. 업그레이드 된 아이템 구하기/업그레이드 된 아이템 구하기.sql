-- 코드를 작성해주세요
select c.ITEM_ID,c.ITEM_NAME,c.RARITY
from ITEM_TREE t
join ITEM_INFO p
on t.PARENT_ITEM_ID  = p.ITEM_ID and p.RARITY = 'RARE'
join ITEM_INFO c
on t.ITEM_ID = c.ITEM_ID
#where i.RARITY = 'RARE'
order by 1 desc
