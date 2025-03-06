-- 코드를 작성해주세요
select ID, 
    case 
        when SIZE_OF_COLONY > 1000 then 'HIGH'
        when SIZE_OF_COLONY <= 100 then 'LOW'
        else 'MEDIUM'
    end as SIZE
from ECOLI_DATA
order by 1


# between 은 이상, 이하