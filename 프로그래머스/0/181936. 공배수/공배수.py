# def solution(number, n, m):
#     if number%n==0 and number%m==0:
#         return 1
#     else:
#         return 0


def solution(number, n, m):
    return int(number%n==0 and number%m==0 )