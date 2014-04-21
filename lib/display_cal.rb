require 'zellers'
require 'days_in_month'

def create_month(month, year)
  week_start = zellers(1, month, year)
  row = ""
  week_start.times {row << "   "}
  row_position = week_start
  days = days_in_month(month, year)
  day_counter = 1
  rows = 0
  created_month = []
  days.times do
    day_counter < 10 ? row << " #{day_counter}" : row << "#{day_counter}"
    unless row_position > 5
      row << " " unless day_counter == days
      row_position += 1
    else
      created_month << "#{row}"
      rows += 1
      row = ""
      row_position = 0
    end
    day_counter += 1
  end
  unless row == ""
    created_month << "#{row}"
    rows += 1
  end
  (6-rows).times {created_month << ""}
  return created_month
end

def create_title_row(month, year)
  months = ["", "January", "Feburary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  month_name = months[month]
  title_row = ""
    case month
    when 2, 9, 11, 12
      title_row << "   #{month_name} #{year}"
    when 1, 8, 10
      title_row << "    #{month_name} #{year}"
    when 3, 4, 6, 7
      title_row << "     #{month_name} #{year}"
    when 5
      title_row << "      #{month_name} #{year}"
    end
end

def build_month(month, year)
  month_rows = []
  month_rows << create_title_row(month, year)
  month_rows << "Su Mo Tu We Th Fr Sa"
  month_rows += create_month(month, year)
end

def print_month_cal(month, year)
  month = month.to_i
  year = year.to_i
  month_rows = build_month(month, year)
  month_rows.each {|row| puts "#{row}"}
end

def print_year_cal(year)
  year = year.to_i
  year_rows = []
  year_rows << "                            #{year}"
  months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  months.each {|m| year_rows << build_month(m, year)}
  year_rows.each do |row|
    if row.is_a? String
      puts "#{row}"
    else
      row.each {|line| puts "#{line}"}
    end
  end
end
