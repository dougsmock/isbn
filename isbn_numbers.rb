
  # if arr.pop.downcase == "x"
  #   isbn_check = 10
  # else
  #   isbn_check = isbn_check.to_i
  # end
  #
  # isbn_sum = 0
  # arr.each_with_index do |v, i|
  #   unless v.to_i.to_s == v
  #     return false
  #   end
  # isbn_sum += v.to_i * (i+1)
  # end
  #
  # if isbn_sum % 11 == isbn_check
  #   return true
  # else
  #   return false
  # end
############ Justin's code above


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
def math_ten(booknum) #function to do 10-number math
  p "5/ math 10 called"
  book_arr = xposition_ten(booknum)

  book_int = []
  j = 0
  while j < 9
    book_int[j] = book_arr[j].to_i
    j += 1
  end

  book_int << book_arr[9]
  # p book_int

  checkmath = (book_int[0] * 1) + (book_int[1] * 2) + (book_int[2] * 3) + (book_int[3] * 4) + (book_int[4] * 5) + (book_int[5] * 6) + (book_int[6] * 7) + (book_int[7] * 8) + (book_int[8] * 9)
  checkdig_check = checkmath % 11

  # p checkmath
  # p checkdig_check

  if (checkdig_check == 10 && book_arr[9] == "X") || (checkdig_check == 10 && book_arr[9] == "x")
    p "Number is valid!"
  elsif checkdig_check == book_arr[9]
    p "Number is valid!"
  else
    p "Number is invalid."
  end
end
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


def remove_hyphens_spaces(isbn)
  arr = isbn.split("")
  arr.delete_if {|c| c==" " || c=="-"}
  arr
  end

def check_length(isbn)
  isbn.length == 10 || isbn.length == 13
end

def invalid_char(isbn)
  alpha1 = ('A'..'W').to_a
  alpha2 = ('Y'..'w').to_a
  alpha3 = ('y'..'z').to_a
  char1 = ('!'..',').to_a
  char2 = ('.'..'/').to_a
  char3 = (':'..'?').to_a
  bad_char = alpha1 + alpha2 + alpha3 + char1 + char2 + char3

  i = 0
    while i < isbn.length
      j = 0
      while j < bad_char.length
        if isbn[i] == bad_char[j]
          nil
        end
        j += 1
      end
      i += 1
    end
end

def math_10(isbn) # do we need a no-x function?
  arr = isbn.split("")
  j = 0
  isbn_sum = 0
  while j < 9
    arr[j] = arr[j].to_i #makes number 0-8 an integer
    isbn_sum += arr[j] * (j + 1) # does the math
    j += 1
  end

  if arr[9].downcase != "x"
    check_dig = arr[9].to_i
  elsif arr[9].downcase == "x"
    check_dig = "x"
  end

  mod = isbn_sum % 11
  if mod == 10
    mod = "x"
  end

    # p check_dig
    # p mod

  if check_dig == mod
    return true
  else
    return false
  end
end



def math_13(isbn)
  arr = isbn.split("")
    i = 0
  while i < 13 do
    arr[i] = arr[i].to_i
    i += 1
  end

  isbn_sum = 0
  isbn_sum = arr[0] + (arr[1] * 3) + arr[2] + (arr[3] * 3) + arr[4] + (arr[5] * 3) + arr[6] + (arr[7] * 3) + arr[8] + (arr[9] * 3) + arr[10] + (arr[11] * 3)

  check_dig = arr[12]

  mod = 10 - (isbn_sum % 10)
    # if mod == 10
    #   mod = 0
    # end

  if check_dig = mod
    return true
  else
    return false
  end
end
