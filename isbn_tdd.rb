require "minitest/autorun"
require_relative "isbn_numbers.rb"

class HashSize < Minitest::Test

# def test_if_hyphens_spaces_out10
#   assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9", "X"], math_10("123-45-6789 X"))
# end

# def test_if_hyphens_spaces_out10
#   assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3"], math_13("123-45-6789 0123"))
# end

def test_if_length_is_10
  assert_equal(true, check_length("123456789X"))
end

def test_if_13_correct_length
  assert_equal(true, check_length("1234567890123"))
end

def test_if_bad_char_invalid
  assert_nil(nil, invalid_char("0471A58697"))
end

def test_if_13_check_length
  assert_equal(true, check_length("1234567890123"))
end

def test_if_more_than_13_false
  assert_equal(false, check_length("12345678901234"))
end

def test_if_number_is_valid_10
  assert_equal(true, math_10("1861972717"))
end

def test_if_number_is_valid_13
  assert_equal(true, math_13("9780262134729"))
end

end
