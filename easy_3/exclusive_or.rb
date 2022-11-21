def xor(a, b)
  if a == true && b == false
    return true
  elsif a == false && b == true
    return true
  else
    return false
  end
end

p xor(5.even?, 4.even?)
p xor(5.odd?, 4.odd?)
p xor(5.odd?, 4.even?)
p xor(5.even?, 4.odd?)