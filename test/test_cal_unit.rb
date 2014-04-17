require 'nss'
require 'zellers'

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

end
