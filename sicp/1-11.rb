# def f(n)
#   return n if n < 3
#   f(n-1) + (2 * f(n - 2)) + (3 * f(n - 3))
# end

# p f(5)

def f(n)
  fi(n, 0, 1, 2)
end

def fi(i, a, b, c)
  return i if i < 0
  return a if i == 0
  fi((i - 1), b, c, (c + (2 * b) + (3 * a)))
end

p f(5)
