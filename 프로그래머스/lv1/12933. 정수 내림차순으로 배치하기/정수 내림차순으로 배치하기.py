def solution(n):
    a = list(map(int, str(n)))
    a.sort(reverse= True)
    return int(''.join(map(str, a)))

# def solution(n):
#     return int(''.join(map(str, sorted(map(int, str(n)), key=lambda x: x, reverse=True))))
