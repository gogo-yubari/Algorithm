def solution(a, b):
    return max(int(f"{a}{b}"),int(f"{b}{a}")) if f"{a}{b}"!=f"{b}{a}" else int(f"{a}{b}")