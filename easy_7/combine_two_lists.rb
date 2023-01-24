def interleave(arr1, arr2)
  final_arr = []
  arr1.each_with_index do |element, index|
    final_arr << element << arr2[index]
  end
  final_arr
end

interleave([1, 2, 3], ['a', 'b', 'c'])