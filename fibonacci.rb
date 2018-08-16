def fib(n)
  fib_iter(1, 0, n)
end

def fib_iter(a, b, count)
  return b if count == 0
  fib_iter((a + b), a, (count - 1))
end

p fib(5)
