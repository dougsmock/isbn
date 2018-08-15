# def book_long(booknum) #changes string to array of one char each; eliminates hyphens and spacesvalidates length
#   p "1 book long called."
#   book_arr = booknum.each_char.to_a
#   book_arr.delete_if {|bookn| bookn == " "} #removes spaces
#   book_arr.delete_if {|bookn| bookn == "-"} #removes hyphens
#   if book_arr.length == 13 || book_arr.length == 10
#     p "Entry is correct length."
#   else
#     p "Entry invalid; not correct length."
#     exit!
#   end
#   book_arr
# end
#
# def invalid_char(booknum)
#   p "2/ invalid char called"
#   alpha1 = ('A'..'W').to_a
#   alpha2 = ('Y'..'w').to_a
#   alpha3 = ('y'..'z').to_a
#   char1 = ('!'..',').to_a
#   char2 = ('.'..'/').to_a
#   char3 = (':'..'?').to_a
#   bad_char = alpha1 + alpha2 + alpha3 + char1 + char2 + char3
#
#   i = 0
#     while i < booknum.length
#       j = 0
#       while j < bad_char.length
#         if booknum[i] == bad_char[j]
#           p "Entry invalid; illegal character."
#           exit!
#         end
#         j += 1
#       end
#       i += 1
#     end
#     booknum
# end
#
# def ten_or_thirteen(booknum) # picking 10 or 13 numbers
#   p "3/ ten or 13 called"
#   if booknum.length == 13
#     math_13(booknum)
#   elsif booknum.length == 10
#     xposition_ten(booknum)
#   end
#   booknum
# end
#
# def xposition_ten(booknum)
#   p "4/ xposition_ten called"
#   # book_arr = ten_or_thirteen(booknum)
#   p booknum
#   i = 0
#   while i < 9
#     if booknum[i] == "X" || booknum == "x"
#       p "Invalid number; X in improper position"
#       exit!
#     end
#     i += 1
#   end
#   booknum
# end
#
# def math_ten(booknum) #function to do 10-number math
#   p "5/ math 10 called"
#   book_arr = xposition_ten(booknum)
#
#   book_int = []
#   j = 0
#   while j < 9
#     book_int[j] = book_arr[j].to_i
#     j += 1
#   end
#
#   book_int << book_arr[9]
#   # p book_int
#
#   checkmath = (book_int[0] * 1) + (book_int[1] * 2) + (book_int[2] * 3) + (book_int[3] * 4) + (book_int[4] * 5) + (book_int[5] * 6) + (book_int[6] * 7) + (book_int[7] * 8) + (book_int[8] * 9)
#   checkdig_check = checkmath % 11
#
#   # p checkmath
#   # p checkdig_check
#
#   if (checkdig_check == 10 && book_arr[9] == "X") || (checkdig_check == 10 && book_arr[9] == "x")
#     p "Number is valid!"
#   elsif checkdig_check == book_arr[9]
#     p "Number is valid!"
#   else
#     p "Number is invalid."
#   end
# end
#
# def math_13(booknum) #function to do 13-number math
#   p "6/ math 13 called."
#
#
#
#
# end
#
#
#
#
#
#
#
#
#
#
#
#
# booknum = "1234-5678-9X"
# p booknum
# book_long(booknum) # sends booknum to function
# invalid_char(booknum) # checks for invalid char in 10 or 13
# ten_or_thirteen(booknum) # checks whether 10 or 13 characters


# Refactoring here ////////////////////////////


def check_length(isbn)
  isbn.length == 10 || isbn.length == 13
end

def check_isbn(isbn)
  arr = isbn.split("")
  arr.delete_if {|c| c==" " || c=="-"}

  check_length(arr) == true

  isbn_sum = 0
  isbn_check = arr.pop
  if isbn_check.downcase == "x"
    isbn_check = 10
  else
    isbn_check = isbn_check.to_i
  end

  arr.each_with_index do |v, i|
    unless v.to_i.to_s == v
      return false
    end
  isbn_sum += v.to_i * (i+1)
  end

  if isbn_sum % 11 == isbn_check
    return true
  else
    return false
  end
end


def check_isbn_13(isbn)
    i = 0
  while i < 13 do
    isbn[i].to_i
    i += 1
  end

  isbn_sum = isbn[0] + (isbn[1] * 3) + isbn[2] + (isbn[3] * 3) + isbn[4] + (isbn[5] * 3) + isbn[6] + (isbn[7] * 3) + isbn[8] + (isbn[9] * 3) + isbn[10] + (isbn[11] * 3)

  isbn_mod = isbn_sum % 10
  isbn_digit = 10 - isbn_mod

  isbn_digit == isbn[12]

end
