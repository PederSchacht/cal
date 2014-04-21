require 'nss'
require 'display_cal'

class CalTest < MiniTest::Unit::TestCase

  def test_integration_1_correct_form_of_input
    actual = `./cal 02 1800`
    expected = <<-EOS
   Feburary 1800
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28

EOS
    assert_equal expected, actual
  end

  def test_integration_2_correct_form_of_input
    actual = `./cal 02 2012`
    expected = <<-EOS
   Feburary 2012
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29

EOS
    assert_equal expected, actual
  end

  def test_integration_3_correct_form_of_input
    actual = `./cal 02 1803`
    expected = <<-EOS
   Feburary 1803
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28

EOS
    assert_equal expected, actual
  end

  def test_integration_4_correct_form_of_input
    actual = `./cal 03 2014`
    expected = <<-EOS
     March 2014
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
    assert_equal expected, actual
  end

  def test_integration_5_correct_form_of_input
    actual = `./cal 07 1800`
    expected = <<-EOS
     July 1800
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31

EOS
    assert_equal expected, actual
  end

  def test_integration_6_correct_form_of_input
    actual = `./cal 12 2012`
    expected = <<-EOS
   December 2012
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30 31
EOS
    assert_equal expected, actual
  end

  def test_integration_7_correct_form_of_input
    actual = `./cal 02 2015`
    expected = <<-EOS
   Feburary 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28


EOS
    assert_equal expected, actual
  end

  def test_integration_8_correct_form_of_input
    actual = `./cal 03 2015`
    expected = <<-EOS
     March 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31

EOS
    assert_equal expected, actual
  end
end
