def cbrt_iter(guess, old_guess, x)
  if good_enough?(guess, x)
    return guess
  else
    improved_guess = improve(guess, x)
    cbrt_iter(improved_guess, guess, x)
  end
end

def improve(guess, x)
  average3((x / square(guess)), guess, guess)
end

def average3(x, y, z)
  (x + y + z) / 3
end

def square(x)
  x**2
end

def good_enough?(guess, x)
  improve(guess, x) == guess
end

def cbrt(x)
  cbrt_iter(1.0, 0.0, x)
end

p cbrt(27)
