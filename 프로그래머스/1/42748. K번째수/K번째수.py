def solution(array, commands):
    s = []
    for i in commands:
        a = i[0] - 1
        b = i[1]
        c = i[2] - 1
        
        s.append(sorted(array[a:b])[c]) 
        
    return s

# return [sorted(array[i[0] - 1:i[1]])[i[2] - 1] for i in commands]