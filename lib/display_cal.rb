require 'zellers'
require 'days_in_month'

def print_month_title(month, year)
  days_title = "Su Mo Tu We Th Fr Sa"
  months = ["", "January", "Feburary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  month_name = months[month]
    case month
    when 2, 9, 11, 12
      puts "   #{month_name} #{year}"
      puts "#{days_title}"
    when 1, 8, 10
      puts "    #{month_name} #{year}"
      puts "#{days_title}"
    when 3, 4, 6, 7
      puts "     #{month_name} #{year}"
      puts "#{days_title}"
    when 5
      puts "      #{month_name} #{year}"
      puts "#{days_title}"
    end
end

def print_month(month, year)
  month = month.to_i
  year = year.to_i
  print_month_title(month, year)
  week_start = zellers(1, month, year)
  row = ""
  week_start.times {row << "   "}
  row_position = week_start
  days = days_in_month(month, year)
  day_counter = 1
  rows = 0
  days.times do
    day_counter < 10 ? row << " #{day_counter}" : row << "#{day_counter}"
    unless row_position > 5
      row << " " unless day_counter == days
      row_position += 1
    else
      puts "#{row}"
      rows += 1
      row = ""
      row_position = 0
    end
    day_counter += 1
  end
  unless row == ""
    puts "#{row}"
    rows += 1
  end
  (6-rows).times {puts ""}
end
