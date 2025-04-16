def solution(arr):
    # return [arr[i] for i in range(len(arr) -1) if arr[i] != arr[i+1]] + [arr[-1]]
    return [v for i,v in enumerate(arr) if i == len(arr) - 1 or v != arr[i+1] ] 