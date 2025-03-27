def solution(num_list):
    a = int(''.join(f"{i}" for i in num_list if i%2))
    b = int(''.join(f"{i}" for i in num_list if not i%2))
    return a+b
