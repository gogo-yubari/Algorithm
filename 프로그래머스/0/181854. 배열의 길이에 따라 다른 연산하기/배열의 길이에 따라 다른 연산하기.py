

def solution(arr, n):
    return [v+n if (i%2==0 and len(arr)%2==1) 
            or (i%2==1 and len(arr)%2==0) 
            else v for i,v in enumerate(arr)]

# def solution(arr, n):
#     return [v+n for i,v in enumerate(arr) if not i%2] 
#             if len(arr)%2 else [v+n for i,v in enumerate(arr) if i%2]     
# 이건 짝수행,홀수행만 나와버림..    

# def solution(arr, n):
#     if len(arr) % 2:
#         return [v + n if i % 2 == 0 else v for i, v in enumerate(arr)]  
#     else:
#         return [v + n if i % 2 != 0 else v for i, v in enumerate(arr)] 