def sqrt_iter(guess, x)
  if good_enough?(guess, x)
    return guess
  else
    improved_guess = improve(guess, x)
    sqrt_iter(improved_guess, x)
  end
end

def improve(guess, x)
  average(guess, (x / guess))
end

def average(x, y)
  (x + y) / 2
end

def square(x)
  x**2
end

def good_enough?(guess, x)
  # ( square(guess) - x ).abs < 0.001
  improve(guess, x) == guess
end

def sqrt(x)
  sqrt_iter(1.0, x)
end

p sqrt(0.00000000000000000009)
