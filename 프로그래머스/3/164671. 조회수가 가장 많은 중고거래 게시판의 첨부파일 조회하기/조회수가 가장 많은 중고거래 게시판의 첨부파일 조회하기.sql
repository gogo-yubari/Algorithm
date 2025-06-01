-- 코드를 입력하세요
WITH RANKED as (
    SELECT 
    CONCAT('/home/grep/src/',f.BOARD_ID,'/',f.FILE_ID,f.FILE_NAME,f.FILE_EXT) as FILE_PATH,
    RANK() OVER (order by b.VIEWS desc) as rk,
    f.FILE_ID
    from USED_GOODS_BOARD b
    join USED_GOODS_FILE f on b.BOARD_ID = f.BOARD_ID
    order by f.FILE_ID desc
    )
select FILE_PATH
from RANKED
where rk = 1