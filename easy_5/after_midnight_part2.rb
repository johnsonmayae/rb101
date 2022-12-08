MINUTES_IN_AN_HOUR = 60
HOURS_IN_A_DAY = 24
MINUTES_PER_DAY = MINUTES_IN_AN_HOUR * HOURS_IN_A_DAY

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_IN_AN_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

puts after_midnight('00:00') #== 0
puts before_midnight('00:00') #== 0
puts after_midnight('12:34') #== 754
puts before_midnight('12:34') #== 686
puts after_midnight('24:00') #== 0
puts before_midnight('24:00') #== 0