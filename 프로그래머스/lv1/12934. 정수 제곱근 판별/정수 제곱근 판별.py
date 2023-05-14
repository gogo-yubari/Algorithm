#import math

def solution(n):
    if int(n**0.5)==n**0.5:
        x = n**0.5
        return (x+1)**2
    else:
        return -1

# dtype이 int/float인지
# math 의 sqrt()와 n**0.5 중 뭐가 효율면에서 높은지
# math.sqrt(n)