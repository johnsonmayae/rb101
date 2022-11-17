def win?(first, second)
  (first == 'r' && second == 'x') ||
    (first == 'p'&& second == 'rock') ||
    (first == 'x' && second == 'p') ||
    (first == 'r' && second == 'l') ||
    (first == 'l' && second == 'p') ||
    (first == 'l' && second == 's') ||
    (first == 'x' && second == 'l') ||
    (first == 'p' && second == 's') ||
    (first == 's' && second == 'r') ||
    (first == 's' && second == 'x')
end