def word_cap(string)
  final_string = []
  new_string = string.split(' ')
  new_string.each do |element|
    final_string << element.to_s.capitalize
  end
  final_string.join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'