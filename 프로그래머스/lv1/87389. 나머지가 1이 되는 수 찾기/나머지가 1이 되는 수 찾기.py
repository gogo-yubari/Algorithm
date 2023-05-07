
def solution(n):
    sublist = []
    for i in range(1,n):
        if n%i == 1:
            sublist.append(i)
    x = min(sublist)
    return x