-- 코드를 작성해주세요
select ROUTE, 
CONCAT(ROUND(SUM(D_BETWEEN_DIST),1),'km') as TOTAL_DISTANCE,
CONCAT(ROUND(AVG(D_BETWEEN_DIST),2),'km') as AVERAGE_DISTANCE
from SUBWAY_DISTANCE
group by ROUTE
order by SUM(D_BETWEEN_DIST) desc

#문자열정렬,숫자정렬주의