def book_long(booknum) #changes string to array of one char each
  book_arr = booknum.each_char.to_a
  p book_arr
  book_arr.delete_if {|bookn| bookn == " "} #removes spaces
  book_arr.delete_if {|bookn| bookn == "-"} #removes hyphens
  p book_arr
  if book_arr.length == 13 || book_arr.length == 10
    p "Entry is correct length."
  else
    p "Entry invalid; not correct length."
    exit!
  end
  book_arr
end

def invalid_char_ten(booknum)
  book_arr = book_long(booknum)
  p book_arr
  alpha1 = ('A'..'W').to_a
  alpha2 = ('Y'..'w').to_a
  alpha3 = ('y'..'z').to_a
  char1 = ('!'..',').to_a
  char2 = ('.'..'/').to_a
  char3 = (':'..'?').to_a
  bad_char = alpha1 + alpha2 + alpha3 + char1 + char2 + char3
  p bad_char

  i = 0
    while i < book_arr.length
      j = 0
      while j < bad_char.length
        if book_arr[i] == bad_char[j]
          p "Entry invalid; illegal character."
          exit!
        end
        # p "jay #{j}"
        j += 1
      end
      # p "eye #{i}"
      i += 1
    end
    book_arr
end

def xposition_ten(booknum)
  book_arr = invalid_char_ten(booknum)
  p book_arr
  i = 0
  while i < 9
    if booknum[i] == "X" || booknum == "x"
      p "Invalid number; X in improper position"
      exit!
    end
    i += 1
  end
  p "Valid 10-character number!"
  book_arr
end

def math_ten(booknum)
  book_arr = xposition_ten(booknum)
  checkdig = book_arr[9]
  checkmath = (book_arr[0] * 1) + (book_arr[1] * 2) + (book_arr[2] * 3) + (book_arr[3] * 4) + (book_arr[4] * 5) + (book_arr[5] * 6) + (book_arr[6] * 7) + (book_arr[7] * 8) + (book_arr[8] * 9)
  checkdig_check = checkmath % 11
  p checkdig_check

end


booknum = "1234-5678 90" # 10 char correct
book_long(booknum) # sends booknum to function
invalid_char_ten(booknum)
xposition_ten(booknum)











# this is merely practice on nested loops
# i = 0
#
# while i < 3 do
#   j = 0
#   while j < 10 do
#     puts "jay #{j}"
#     j += 1
#   end
#   puts "eye #{i}"
#   i += 1
# end
