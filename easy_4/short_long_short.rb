def short_long_short(string1, string2)
  if string1.length > string2.length
    puts string1.concat(string2).insert(0, string2)
  else 
    puts string2.concat(string1).insert(0, string1)
  end
end


short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh')
short_long_short('', 'xyz')