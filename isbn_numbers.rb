def book_sz(booknum)
  p booknum
  p booknum.size
  if booknum.size != 12 && booknum.size != 9
    p "Number is invalid."
  end
  booknum
end

booknum = "893378989d"
book_sz(booknum)
p booknum
