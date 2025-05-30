-- 코드를 작성해주세요
select a.ITEM_ID, a.ITEM_NAME, a.RARITY
from ITEM_INFO a
join ITEM_TREE b on a.ITEM_ID = b.ITEM_ID
left join ITEM_TREE c on b.ITEM_ID = c.PARENT_ITEM_ID
where c.ITEM_ID IS NULL
order by a.ITEM_ID desc
