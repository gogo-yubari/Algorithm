-- 코드를 입력하세요
SELECT a.APNT_NO, p.PT_NAME, p.PT_NO, a.MCDP_CD, d.DR_NAME, a.APNT_YMD
from APPOINTMENT a
left join DOCTOR d on a.MDDR_ID = d.DR_ID
left join PATIENT p on a.PT_NO = p.PT_NO
where a.APNT_CNCL_YN = 'N' and a.MCDP_CD = 'CS' and a.APNT_YMD like '2022-04-13%'
order by APNT_YMD

# SELECT a.APNT_NO, p.PT_NAME, p.PT_NO, a.MCDP_CD, d.DR_NAME, a.APNT_YMD
# FROM APPOINTMENT as a
# LEFT JOIN PATIENT as p
# ON a.PT_NO = p.PT_NO
# LEFT JOIN DOCTOR as d
# ON a.MDDR_ID = d.DR_ID
# WHERE a.APNT_YMD LIKE '2022-04-13%'
# AND a.APNT_CNCL_YN = 'N'
# AND a.MCDP_CD = 'CS'
# ORDER BY a.APNT_YMD