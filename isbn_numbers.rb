def book_long(booknum) #changes string to array of one char each
  book_arr = booknum.each_char.to_a
  p book_arr
  book_arr.delete_if {|bookn| bookn == " "} #removes spaces
  book_arr.delete_if {|bookn| bookn == "-"} #removes hyphens
  p book_arr
  if book_arr.size == 13 || book_arr.size == 10
    p "Entry is correct length."
  else
    p "Entry invalid; not correct length."
    exit!
  end
  book_arr.length
end

def invalid_char(book_arr)
  alpha1 = ('A'..'W').to_a
  alpha2 = ('Y'..'w').to_a
  alpha3 = ('y'..'z').to_a
  char1 = ('!'..',').to_a
  char2 = ('.'..'/').to_a
  char3 = (':'..'?').to_a
  invalid_char = alpha1 + alpha2 + alpha3 + char1 + char2 + char3

  i = 0
    while i < book_arr.length do
      p book_arr[i]
      if book_arr[i].include?(invalid_char) #find correct method
        p "Entry invalid; illegal characters."
        exit!
      else
        i += i + 1
      end
    end
    p book_arr
    book_arr
end



booknum = "893370-898-912 2" # right length, wrong variable
book_long(booknum) # sends booknum to function









#
# def isbn_numeric(book_arr)
# stringer = "" # knock this out
# end
