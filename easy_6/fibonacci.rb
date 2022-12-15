def find_fibonacci_index_by_length(length)
  fib_array = [1, 1]
  counter = 1
  fib_number = 0

  while fib_number.to_s.length < length
    fib_number = (fib_array[counter]) + (fib_array[counter - 1])
    fib_array << fib_number
    counter += 1
  end

  counter + 1
end