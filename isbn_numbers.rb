def main(isbn)
  results = false
    if valid_char(isbn) == true
      isbn_arr = remove_hyphens_spaces(isbn)
      if isbn_arr.length == 10
          if no_wrong_x10(isbn_arr) == true
            # if math_10(isbn_arr) == true
            #   results = true
            # else
            #   results = false
            # end
            results = math_10(isbn_arr)
          else
            results = false
            p isbn_arr
          end

      elsif isbn_arr.length == 13
          if no_x13(isbn_arr) == true
              # if math_13(isbn_arr) == true
              #   results = true
              # else
              #   results = false
              # end
              results = math_13(isbn_arr)
          else
              results = false
          end
      else
          results = false
      end
    else
      results = false
    end
results
end

def valid_char(isbn) # Tests for bad chars except for "X"
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
          return false
        end
        j += 1
      end
      i += 1
    end
    return true
end

def remove_hyphens_spaces(isbn)
  isbn = isbn.split("")
  p isbn
  p "length is #{isbn.length}"
  isbn = isbn.delete_if {|c| c==" " || c=="-"}
  p isbn
  p "length is #{isbn.length}"
  isbn
end


# def check_length(isbn)
#   isbn.length == 10 || isbn.length == 13
# end

def no_wrong_x10(isbn) #Tests for renegade "X"
  # arr = isbn.split("")
  # p "We have #{isbn}"
  pop_value = isbn.pop

  if isbn.include?("X") || isbn.include?("x")
    false
  else
    isbn << pop_value
    true
  end
end

def no_x13(isbn)
  # arr = isbn.split("")

  if isbn.include?("X") || isbn.include?("x")
    return false
  else
    return true
  end
end

def math_10(isbn)
  # arr = isbn.split("")
  p "beginning math 10"
  j = 0
  isbn_sum = 0
  while j < 9
    isbn[j] = isbn[j].to_i #makes number 0-8 an integer
    isbn_sum +=isbn[j] * (j + 1) # does the math
    j += 1
    p "the sum is #{isbn_sum}"
  end

  if isbn[9].downcase != "x"
    check_dig = isbn[9].to_i
  elsif isbn[9].downcase == "x"
    check_dig = "x"
  end

  mod = isbn_sum % 11
  if mod == 10
    mod = "x"
  end
  check_dig == mod # if true returns true
end

def math_13(isbn)
  # arr = isbn.split("")
    i = 0
  while i < 13
    isbn[i] = isbn[i].to_i
    i += 1
  end
  isbn_sum = 0
  isbn_sum = isbn[0] + (isbn[1] * 3) + isbn[2] + (isbn[3] * 3) + isbn[4] + (isbn[5] * 3) + isbn[6] + (isbn[7] * 3) + isbn[8] + (isbn[9] * 3) + isbn[10] + (isbn[11] * 3)
  p "The sum of all those numbers is #{isbn_sum}"
  check_dig = isbn[12]
  if (isbn_sum % 10) == 0
    mod = 0
  else
    mod = 10 - (isbn_sum % 10)
  end

  check_dig == mod #if true returns true
end





# CSV.foreach("path/to/file.csv") do |row|
#     NewFile << Row[0] + "," + Row[1] + "," + Result + "\n"
#
#
#
#
#
#
# end


#
# CSV.foreach("path/to/file.csv") do |row|
#   # use row here...
# end
