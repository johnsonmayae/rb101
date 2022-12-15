# Write a method that takes a floating point number that represents an angle between 
# 0 and 360 degrees and returns a String that represents that angle in degrees, 
# minutes and seconds. You should use a degree symbol (°) to represent degrees, 
# a single quote (') to represent minutes, and a double quote (") to represent seconds. 
# A degree has 60 minutes, while a minute has 60 seconds.

DEGREE = "\xC2\xB0"
MINUTES_IN_DEGREE = 60
SECONDS_IN_MINUTE = 60
SECONDS_IN_DEGREE = MINUTES_IN_DEGREE * SECONDS_IN_MINUTE

def dms(float)
  total_seconds = (float * SECONDS_IN_DEGREE).round
  degrees, remaining seconds = total_seconds.divmod(SECONDS_IN_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_IN_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end