def nextSqure(n):
    return n == int(n**.5)**2 and int(n**.5+1)**2 or 'no'

# return에 이렇게 or 써도 되네


def nextSqure(n):
    sqrt = pow(n, 0.5)
    return pow(sqrt + 1, 2) if sqrt == int(sqrt) else 'no'
  
# return 하고 else 쓰기도 함
