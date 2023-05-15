def solution(n):
a = sorted(list(map(int,str(n))),reverse= True)
return ''.join(map(str,a))

def solution(n):
a = list(map(int, str(n)))
a.sort(reverse= True)
return int(''.join(map(str, a)))

def solution(n):
     return int(''.join(map(str, sorted(map(int, str(n)), key=lambda x: x, reverse=True))))


# 첫 번째 함수에서는 sorted() 함수를 사용하여 역순으로 정렬된 복사본을 생성하여 반환합니다. 이 경우, n이 큰 경우 정렬된 복사본을 생성하는 데에 약간의 메모리 오버헤드가 발생할 수 있습니다. 하지만 메모리 사용량은 상대적으로 작아서 큰 문제는 없을 것입니다.

# 두 번째 함수에서는 sort() 메소드를 사용하여 원본 리스트를 직접 정렬합니다. 이 경우, n이 큰 경우에도 원본 리스트를 직접 정렬하므로 추가적인 메모리 사용량은 크게 발생하지 않습니다.

# 두 함수 모두 입력 크기에 비례하는 선형 시간복잡도를 가지므로, 실행 시간 측면에서는 큰 차이가 없을 것입니다. 그러나 첫 번째 함수에서는 정렬된 복사본을 생성하여 반환하는데, 이 과정에서 약간의 시간과 메모리 오버헤드가 발생할 수 있습니다.

# 따라서, n 값이 10억 정도로 크다면 두 번째 함수가 약간의 효율성 면에서 더 우수할 수 있습니다.

