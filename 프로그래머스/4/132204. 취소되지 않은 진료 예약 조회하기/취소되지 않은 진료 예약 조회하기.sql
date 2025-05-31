-- 코드를 입력하세요
# SELECT a.APNT_NO, p.PT_NAME, p.PT_NO, a.MCDP_CD, d.DR_NAME, a.APNT_YMD
# from APPOINTMENT a
# join DOCTOR d on a.MDDR_ID = d.DR_ID
# join PATIENT p on a.PT_NO = p.PT_NO
# where a.APNT_CNCL_YN = 'N' and a.MCDP_CD = 'CS' and DATE(a.APNT_YMD) = '2022-04-13%'
# order by APNT_YMD

# # 문제 오류있네 열받아
# # 출력 43 바라 pt22000019 밖에 출력 안되는데 미친것



SELECT a.APNT_NO, p.PT_NAME, p.PT_NO, a.MCDP_CD, d.DR_NAME, a.APNT_YMD
from APPOINTMENT a
left join DOCTOR d on a.MDDR_ID = d.DR_ID
left join PATIENT p on a.PT_NO = p.PT_NO
where a.APNT_CNCL_YN = 'N' and a.MCDP_CD = 'CS' and DATE(a.APNT_YMD) = '2022-04-13'
order by APNT_YMD