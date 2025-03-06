-- 코드를 작성해주세요
with BIN_GENOTYPE as (
    select ID, lpad(right(bin(GENOTYPE),4),4,'0') binG
    from ECOLI_DATA
) 

select COUNT(*) COUNT
from BIN_GENOTYPE
where binG like '__01' or binG like '_10_'
# where regexp_like(binG,'^..01$|^.10.$')
# 서브쿼리나 where절 연산보다는 CTE가 대량의 데이터에 유리
# 비트연산자가 훨씬 .. 더 유리 ㅜㅜ 나만 비트연산자 몰랐어


# SELECT COUNT(*) AS COUNT
# FROM ECOLI_DATA
# WHERE (GENOTYPE & 2 = 0) -- 2번 형질이 없는 대장균
#   AND (GENOTYPE & 5 > 0); -- 1번 또는 3번 형질을 보유한 대장균 (1 + 4)

# SELECT COUNT(*) AS "COUNT"
# FROM ECOLI_DATA
# WHERE GENOTYPE % 8 IN (1,4,5);


# LIKE / REGEXP 
# REGEXP_LIKE (MySQL 8.0, Oracle)
# LIKE ANY (ARRAY[])
