

require_relative('./Book.rb')

class Library

  def initialize(first_book)
    @library = []
    @library << first_book
  end

  def add_book(book_to_add)
    @library << book_to_add if book_to_add.class.to_s == "Book"
  end

  def get_book(book_title)
    # binding.pry
    the_book_index = @library.index {|book| book.get_title == book_title}
    # binding.pry
    return @library[the_book_index] unless the_book_index == nil
    return nil
  end

  def get_book_rental_details(book_title)
    the_book = get_book(book_title)
    # binding.pry
    return the_book[:rental_details] unless the_book == nil
    return nil
  end

  def set_book_rental_details(book_title, new_student, new_date)
    the_book = get_book(book_title)
    the_book.set_rental_details(new_student, new_date)
  end

  def total_books
    return @library.count
  end

end
