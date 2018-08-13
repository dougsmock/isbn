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

  

booknum = "1234-5678 9X" # 10 char correct
book_long(booknum) # sends booknum to function
invalid_char_ten(booknum)











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
