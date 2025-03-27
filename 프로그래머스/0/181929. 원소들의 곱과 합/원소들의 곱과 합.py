def solution(num_list):
    x = 1
    for i in num_list:
        x*=i
    y = sum(num_list)**2
    return  int(x < y)