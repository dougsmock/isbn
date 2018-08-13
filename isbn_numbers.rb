def book_stg(booknum)
  p booknum
  p booknum.size
  if booknum.size == 12
    booknum_twelve(booknum)
    elsif booknum.size == 9
      booknum_nine(booknum)
      else
        "Number is invalid."
  end
end

def booknum_twelve(booknum) # takes 12-character string
  p booknum
end

def booknum_nine(booknum) # takes 9-chacter string
  p booknum
end



booknum = "89337f898ee9090"
book_stg(booknum)
