require 'nss'
require 'display_cal'

class CalTest < MiniTest::Unit::TestCase

  def test_01_zellers_gets_correct_day
    day = zellers(1, 1, 2012)
    assert_equal(0, day)
  end

  def test_02_zellers_gets_correct_day
    day = zellers(30, 11, 2015)
    assert_equal(1, day)
  end

  def test_03_zellers_gets_correct_day
    day = zellers(1, 2, 1803)
    assert_equal(2, day)
  end

  def test_04_zellers_gets_correct_day
    day = zellers(23, 7, 1800)
    assert_equal(3, day)
  end

  def test_05_zellers_gets_correct_day
    day = zellers(17, 4, 2014)
    assert_equal(4, day)
  end

  def test_06_zellers_gets_correct_day
    day = zellers(13, 2, 2015)
    assert_equal(5, day)
  end

  def test_07_zellers_gets_correct_day
    day = zellers(8, 12, 1990)
    assert_equal(6, day)
  end

  def test_08_is_leap_year?
    assert is_leap_year?(2000)
  end

  def test_09_is_leap_year?
    assert !(is_leap_year?(1900))
  end

  def test_10_is_leap_year?
    assert !(is_leap_year?(1803))
  end

  def test_11_is_leap_year?
    assert !(is_leap_year?(2100))
  end

  def test_12_is_leap_year?
    assert is_leap_year?(2400)
  end

  def test_13_days_in_month
    days = days_in_month(1, 2000)
    assert_equal(31, days)
  end

  def test_14a_days_in_month_leap_year
    days = days_in_month(2, 2000)
    assert_equal(29, days)
  end

  def test_14b_days_in_month_not_leap_year
    days = days_in_month(2, 2002)
    assert_equal(28, days)
  end

  def test_15_days_in_month
    days = days_in_month(3, 2000)
    assert_equal(31, days)
  end

  def test_16_days_in_month
    days = days_in_month(4, 2000)
    assert_equal(30, days)
  end

  def test_17_days_in_month
    days = days_in_month(5, 2000)
    assert_equal(31, days)
  end

  def test_18_days_in_month
    days = days_in_month(6, 2000)
    assert_equal(30, days)
  end

  def test_19_days_in_month
    days = days_in_month(7, 2000)
    assert_equal(31, days)
  end

  def test_20_days_in_month
    days = days_in_month(8, 2000)
    assert_equal(31, days)
  end

  def test_21_days_in_month
    days = days_in_month(9, 2000)
    assert_equal(30, days)
  end

  def test_22_days_in_month
    days = days_in_month(10, 2000)
    assert_equal(31, days)
  end

  def test_23_days_in_month
    days = days_in_month(11, 2000)
    assert_equal(30, days)
  end

  def test_24_days_in_month
    days = days_in_month(12, 2000)
    assert_equal(31, days)
  end

#   def test_25_print_month_title
#     actual = print_month_title(1, 2014)
#     expected = <<-EOS
#    January 2014
# Su Mo Tu We Th Fr Sa
# EOS
#     assert_equal expected, actual
#   end

end
