require "minitest/autorun"
require_relative "isbn_numbers.rb"

class HashSize < Minitest::Test

def test_assert_1_equals_1
  assert_equal(1, 1)
end

def test_is_string_all_numeric_12
  booknum = "893378989090f"
  assert_equal(12, booknum.size)
end

# def test_is_string_all_numeric_9
#   booknum = "893378989"
#   assert_equal(9, booknum.size)
# end





end
