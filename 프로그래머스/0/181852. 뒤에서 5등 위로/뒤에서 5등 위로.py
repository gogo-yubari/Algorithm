def solution(num_list):
        return sorted(num_list)[5:]
    
    
    
    
    # return sorted([i for i in num_list if i not in sorted(num_list)[:5]])  
# 왜 샘플 2개가 안될까.. -> 원소가 중복되는 경우 5개 미만, 이상 제거돼서ㅠㅠ
