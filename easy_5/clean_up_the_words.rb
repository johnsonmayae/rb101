ALPHABET = ('a'..'z')

def cleanup(string)
  valid_chars = []

  string.chars.each do |char|
    if ALPHABET.include?(char)
      valid_chars << char
    else
      valid_chars << ' ' unless valid_chars.last == ' '
    end
  end

cleanup("---what's my +*& line?")
