-- 코드를 작성해주세요
# select concat(LENGTH,'cm') as MAX_LENGTH
# from FISH_INFO
# order by LENGTH desc
# limit 1
# '''good:원본 행 유지 / bad : 정렬비용 발생 '''


select concat(max(LENGTH),'cm')as MAX_LENGTH
from FISH_INFO
# where LENGTH is not null - max함수에서 필요 없음
# '''good: 빠름 / bad : 다른 컬럼 정보 필요시 재검색 '''
