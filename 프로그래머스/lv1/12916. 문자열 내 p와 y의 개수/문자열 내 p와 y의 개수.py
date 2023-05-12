def solution(s):
    s = s.lower()
    np = s.count('p')
    ny = s.count('y')

    if np == ny:
        return True
    else:
        return False
    
    # [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print('Hello Python')