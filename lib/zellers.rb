# Zeller's congruence
def zellers(day, month, year)
  month > 2 ? math_year = year : math_year = year-1
  q = day # when used in cal will be = 1
  month > 2 ? m = month : m = month + 12
  k = (math_year % 100)
  j = (math_year / 100)
  h = ((q + ((13*(m+1))/5) + k + (k/4) + (j/4)-(2*j)) % 7)
  # Change date to start with Sunday instead of Saturday
  value = h == 0 ? 6 : h - 1
end
