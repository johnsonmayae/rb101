def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_place(century)
end

def century_place(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_number = century % 10

  case last_number
  when 1 then 'st' 
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

century(2000)
century(2001)
century(1965)
century(256)
century(5)
century(10103)
century(1052)
century(1127)
century(11201)