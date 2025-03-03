# -- 코드를 입력하세요
# SELECT COUNT(USER_ID) AS USER
# FROM `USER_INFO`
# WHERE AGE BETWEEN 20 AND 29
# AND JOINED LIKE '2021%'


# select count(USER_ID) as USERS
# from USER_INFO
# where AGE between 20 and 29
#     and JOINED like '2021%'



select count(USER_ID) as USERS
from USER_INFO
where JOINED like '2021%'
    and AGE between 20 and 29