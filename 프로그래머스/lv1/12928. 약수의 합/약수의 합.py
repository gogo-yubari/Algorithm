def solution(n):
    0 <= n <= 3000 
    divisor = [] #약수 저장할 리스트
    
    for i in range(1,n+1):
        if n%i == 0:
            divisor.append(i)

    return sum(divisor)
        
# 람다 사용하는 법도 보기

# def solution(n):
#     divisor = list(filter(lambda x: n % x == 0, range(1, n+1)))
#     return sum(divisor)
