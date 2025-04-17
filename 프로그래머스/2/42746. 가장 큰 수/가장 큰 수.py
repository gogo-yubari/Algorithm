# from itertools import *
from functools import cmp_to_key

def compare(x,y):
    if x+y > y+x:
        return -1
    elif x+y < y+x:
        return 1
    else:
        return 0

def solution(numbers):
    numbers = list(map(str, numbers))
    numbers.sort(key=cmp_to_key(compare))
    if numbers[0] == '0':
        return '0'
    return ''.join(numbers)

    
#     all = list(permutations(numbers,len(numbers)))
#     x = []
#     x = [int(''.join(str(i) for i in j)) for j in all]

#     return str(max(x)) -- 시간이 너무 걸려서 빠꾸먹음..