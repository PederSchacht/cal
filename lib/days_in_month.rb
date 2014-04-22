def is_leap_year?(year)
  (year % 400 == 0) || (year % 100 != 0 && year % 4 == 0)
end

def days_in_month(month, year)
  case month
  when 1, 3, 5, 7, 8, 10, 12 # Months with 31 days
    return days = 31
  when 4, 6, 9, 11 # Months with 30 days
    return days = 30
  when 2 # February 28 or 29 on leap years
    return days = is_leap_year?(year) ? 29 : 28
  end
end
