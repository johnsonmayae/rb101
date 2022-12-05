[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# the block's return value is [true, false, true]
# the return value of any? is true