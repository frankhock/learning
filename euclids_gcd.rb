def gcd(a, b)
    return a if b == 0
    gcd(b, a.remainder(b))
end

p gcd(206, 40)
