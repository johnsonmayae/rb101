def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase 
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
