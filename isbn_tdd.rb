require "minitest/autorun"
require_relative "isbn_numbers.rb"

class HashSize < Minitest::Test

# def test_if_hyphens_spaces_out10
#   assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9", "X"], remove_hyphens_spaces("123-45-6789 X"))
# end
#
# def test_if_hyphens_spaces_out13
#   assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3"], remove_hyphens_spaces("123-45-6789 0123"))
# end
#
# def test_if_length_is_10
#   assert_equal(true, check_length("123456789X"))
# end
#
# def test_if_13_correct_length
#   assert_equal(true, check_length("1234567890123"))
# end
#
#
# def test_if_13_check_length
#   assert_equal(true, check_length("1234567890123"))
# end
#
# def test_if_more_than_13_false
#   assert_equal(false, check_length("12345678901234"))
# end
#
# def test_if_number_is_valid_10
#   assert_equal(true, math_10("1861972717"))
# end
#
# def test_if_number_is_valid_13
#   assert_equal(true, math_13("9781861972712"))
# end
#
# def test_if_no_renegade_x_10
#   assert_equal(false, no_wrong_x10("x234x6789X"))
# end


# ################################## testing each for number of things

# def test_if_number_works
#   assert_equal(true, main("1234567890"))
# end

# def test_if_number
#   assert_equal(false, main("1234x67890"))
# end
#
# def test_if_number_works_one
#   assert_equal(false, main("123456789W"))
# end
#
# def test_if_number_works_two
#   assert_equal(true, main("123456789X"))
# end
#
# def test_if_no_x_thirteen_works
#   assert_equal(false, main("978316148410x"))
# end
#
def test_remove_hyphens_spaces
  assert_equal(true, main("123456789 X"))
end
#
# def test_check_13_math
#   assert_equal(true, main("9781861978769"))
# end
#
# def test_all_spaces
#   assert_equal([], remove_hyphens_spaces("       "))
# end
#
# def test_no_wrong_x10
#   assert_equal(true, no_wrong_x10(["1", "2", "3", "4", "5", "6", "7", "8", "9", "X"]))
# end
#
# def test_all_numbers
#   assert_equal(true, no_wrong_x10(["1", "2", "3", "4", "5", "6", "7", "8", "9", "X"]))
# end
#

end
