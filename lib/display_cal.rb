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
    until row.length == 20
      row << " "
    end
    created_month << "#{row}"
    rows += 1
  end
  (6-rows).times {created_month << "                    "}
  return created_month
end

def create_title_row(month, year)
  months = ["", "January", "Feburary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  month_name = months[month]
  title_row = ""
  if year != nil
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
  else
      title_row << "#{month_name}".center(20)
  end
end

def build_month(month, year)
  month_rows = []
  month_rows << create_title_row(month, year)
  month_rows << "Su Mo Tu We Th Fr Sa"
  month_rows += create_month(month, year)
end

def build_year_month(month, year)
  month_rows = []
  month_rows << create_title_row(month, nil)
  month_rows << "Su Mo Tu We Th Fr Sa"
  month_rows += create_month(month, year)
end

def print_month_cal(month, year)
  month = month.to_i
  year = year.to_i
  month_rows = build_month(month, year)
  month_rows_no_whitespace = []
  month_rows.each {|line| month_rows_no_whitespace << line.rstrip}
  month_rows_no_whitespace.each {|row| puts "#{row}"}
end

def print_year_cal(year)
  year = year.to_i
  year_rows = []
  (1..12).each {|m| year_rows << build_year_month(m, year)}
  sorted_year_rows = sort_year(year_rows)
  sorted = []
  sorted_year_rows.each {|line| sorted << line.join("  ")}
  sorted_no_whitespace = []
  sorted.each {|line| sorted_no_whitespace << line.rstrip}
  puts "                            #{year}"
  sorted_no_whitespace.each {|line| puts "#{line}"}
end

def sort_year(year_rows)
  sorted = []
  sorted += year_rows[0].zip(year_rows[1],year_rows[2])
  sorted << [""]
  sorted += year_rows[3].zip(year_rows[4],year_rows[5])
  sorted << [""]
  sorted += year_rows[6].zip(year_rows[7],year_rows[8])
  sorted << [""]
  sorted += year_rows[9].zip(year_rows[10],year_rows[11])
  return sorted
end
