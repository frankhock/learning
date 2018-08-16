# def count_change(amount)
#   cc(amount, 5)
# end

# def cc(amount, kinds_of_coins)
#   return 1 if amount == 0
#   return 0 if (amount < 0 || kinds_of_coins == 0)
#   cc(amount, (kinds_of_coins - 1)) + cc((amount - first_denomination(kinds_of_coins)), kinds_of_coins)
# end

def first_denomination(kinds_of_coins)
  case kinds_of_coins
  when 1
    return 1
  when 2
    return 5
  when 3
    return 10
  when 4
    return 25
  when 5
    return 50
  end
end

def count_change(amount)
  cc_iter(amount, 5, 1)
end

def cc_iter(amount, kinds_of_coins, counter)
  return amount if counter > 5
  new_amount = amount + first_denomination(kinds_of_coins)
  cc_iter(new_amount, (kinds_of_coins - 1), (counter + 1))
end

p count_change(100)
