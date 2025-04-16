from collections import Counter

def solution(p, c):
    countp = Counter(p)
    countc = Counter(c)
    x = list((countp - countc).elements())
    return " ".join(map(str, x))
