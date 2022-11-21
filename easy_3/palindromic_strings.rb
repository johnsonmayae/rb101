def palindrome?(string)
  return true if string == string.reverse
  return false if string != string.reverse
end


p palindrome?('madam')