MINUTES_IN_AN_HOUR = 60
HOURS_IN_A_DAY = 24
MINUTES_PER_DAY = MINUTES_IN_AN_HOUR * HOURS_IN_A_DAY

def formula_for_minutes_0_thru_1439(minutes)
  while minutes > 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(other_minutes)
  other_minutes = formula_for_minutes_0_thru_1439(other_minutes)
  hours, minutes = other_minutes.divmod(MINUTES_IN_AN_HOUR)
  format('%02d:%02d', hours, minutes)
end
  




p time_of_day(0) #== "00:00"
#time_of_day(-3) == "23:57"
#time_of_day(35) == "00:35"
#time_of_day(-1437) == "00:03"
#time_of_day(3000) == "02:00"
#time_of_day(800) == "13:20"
#time_of_day(-4231) == "01:29"