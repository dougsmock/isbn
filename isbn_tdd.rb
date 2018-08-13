require "minitest/autorun"
require_relative "isbn_numbers.rb"

class HashSize < Minitest::Test

def test_assert_1_equals_1
  assert_equal(1, 1)
end

def test_is_string_13_char
  booknum = "8933789896890"
  assert_equal(13, booknum.size)
end

# def test_is_string_10_char #above test and this test cannot pass at same time with same string
#   booknum = "8933789896890"
#   assert_equal(10, booknum.size)
# end

def test_string_no_without_spaces
  booknum = "8933789896890"
  assert_equal(13, booknum.size)
end

def test_string_no_with_hyphens_and_spaces()
  book_arr = "89337-8989-68 90"
  assert_equal(13, book_long(book_arr))
end

def test_if_letters_are_valid_in_10_chars
  book_arr = "12345678FX"
  assert_equal(true, invalid_char_ten(book_arr))
end






end
