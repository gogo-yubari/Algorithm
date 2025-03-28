# def solution(arr, n):
#     return [ v+n for i,v in enumerate(arr) if not i%2 ] if len(arr)%2 else [ v+n for i,v in enumerate(arr) if i%2 ] 

def solution(arr, n):
    if len(arr) % 2:
        return [v + n if i % 2 == 0 else v for i, v in enumerate(arr)]  # 홀수 길이일 때 짝수 인덱스에만 n을 더함
    else:
        return [v + n if i % 2 != 0 else v for i, v in enumerate(arr)]  # 짝수 길이일 때 홀수 인덱스에만 n을 더함