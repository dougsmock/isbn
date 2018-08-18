require "minitest/autorun"
require_relative "isbn_numbers.rb"

class HashSize < Minitest::Test

# def test_assert_1_equals_1
#   assert_equal(1, 1)
# end
#
# def test_is_string_13_char
#   booknum = "8933789896890"
#   assert_equal(13, booknum.size)
# end
#
# # def test_is_string_10_char #above test and this test cannot pass at same time with same string
# #   booknum = "8933789896890"
# #   assert_equal(10, booknum.size)
# # end
#
# def test_string_no_without_spaces
#   booknum = "8933789896890"
#   assert_equal(13, booknum.size)
# end
#
# def test_string_no_with_hyphens_and_spaces() #... test deals with 13-char numbers
#   book_arr = "89337-8989-68 90"
#   assert_equal(13, book_long(book_arr))
# end
#
# def test_if_letters_are_invalid_in_10_chars #... passed with weird failure
#   book_arr = "12-3456 78-9X"
#   assert_equal(true, invalid_char_ten(book_arr))
# end
#
# def test_if_x_is_in_right_place
#   booknum = "12-3456 78-9X"
#   assert_equal("X is in right place!", xposition_ten(booknum))
# end
#
# # def test_if_x_is_in_wrong_place #draws an invalid message, no count of failures, etc.
# #   booknum = "12-X456 78-93"
# #   assert_equal("X is in the right place!", xposition_ten(booknum))
# # end
#
# def test_if_booknum_is_valid_or_not
#   booknum = "1234 5678 9X"
#   assert_equal("Number is valid!", math_ten(booknum))
# end
#
# def test_that_booknum_is_invalid
#   booknum = "1234 5678 90"
#   assert_equal("Number is invalid.", math_ten(booknum))
# end
#
# def test_that_booknum_is_invalid_by_X_position
#   booknum = "1234 X678 90"
#   assert_equal("Invalid number; X in improper position.", math_ten(booknum))
# end
#
# def test_that_booknum_is_invalid_by_another_letter
#   booknum = "1234 0678 9090 8"
#   assert_equal("Entry invalid; illegal character.", invalid_char_ten(booknum))
# end

#refactor ///////////////

def test_if_hyphens_spaces_out10
  assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9", "X"], remove_hyphens_spaces("123-45-6789 X"))
end

def test_if_hyphens_spaces_out10
  assert_equal(["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1", "2", "3"], remove_hyphens_spaces("123-45-6789 0123"))
end

def test_if_length_is_10
  assert_equal(true, check_length("123456789X"))
end

def test_if_13_correct_length
  assert_equal(true, check_length("1234567890123"))
end

def test_if_bad_char_invalid
  assert_nil(nil, invalid_char("0471A58697"))
end

def test_if_number_is_valid_10
  assert_equal(true, math_10("0198526636"))
end

def test_if_number_is_valid_13
  assert_equal(true, math_13("978-0-262-13472-9"))
end
#
# def test_if_13_check_length
#   assert_equal(true, check_length("1234567890123"))
# end
#
# def test_if_more_than_13_false
#   assert_equal(false, check_length("12345678901234"))
# end
#
# def test_if_a_13number_is_false
#   assert_equal(false, check_isbn_13(978-0-262-13472-9))
# end
#
# def test_if_10_number_is_true
#   assert_equal(true, check_isbn("123456789X"))
# end
#
# def test_13number_tests
#   assert_equal(true, check_isbn_13("978-3-16-148410-0")) # cannot get it to pass.
# end


end
