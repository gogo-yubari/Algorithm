import math

def solution(p,s):
    a = [math.ceil((100-pi)/si) for pi,si in zip (p,s)]
    b = []
    
    x = a[0]
    count = 1
    for i in range(1,len(a)):
        if a[i] <= x:
            count += 1
        else:
            b.append(count)
            x = a[i]
            count = 1
            
    b.append(count)
    
    return b
