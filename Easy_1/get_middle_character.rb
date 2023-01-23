def center_of(string)
  if string.length.odd?
    return string[string.length/2]
  else
    return string[(string.length/2)-1, 2]
  end
end

puts center_of('I love ruby')
puts center_of('Launch School')
puts center_of('Launch')
puts center_of('Launchschool')
puts center_of('x')