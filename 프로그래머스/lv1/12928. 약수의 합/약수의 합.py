def solution(n):
    n = int(input("정수 n을 입력하세요:"))
    divisor = [] #약수 저장할 리스트
    
    for i in range(1,n+1):
        if n%i == 0:
        divisor.append(i)

        # 람다 사용하는 법도 보기잉
    