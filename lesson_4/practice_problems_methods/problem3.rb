[1, 2, 3].reject do |num|
  puts num
end

# [1, 2, 3] 
# puts always returns nil and reject selects the values that return
# as nil... all of them because of puts