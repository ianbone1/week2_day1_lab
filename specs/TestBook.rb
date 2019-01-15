require('minitest/autorun')
require('minitest/rg')
require_relative('../Book.rb')
require_relative('../Library.rb')

require ('pry')

class TestBook < Minitest::Test

  # {
  #   title: "lord_of_the_rings",
  #   rental_details: {
  #    student_name: "Jeff",
  #    date: "01/12/16"
  #   }
  # }

  def test_book_name_set_get
    book1 = Book.new("The Lord Of The Rings")
    assert_equal("The Lord Of The Rings", book1.get_title)
  end

  def test_book_rental
    book1 = Book.new("The Lord Of The Rings")
    book1.set_rental_details("Ian", "1/3/2019")
    assert_equal({student_name: "Ian", date: "1/3/2019"}, book1.get_rental_details)
  end

  def test_book_details
    book1 = Book.new("The Lord Of The Rings")
    book1.set_rental_details("Ian", "1/3/2019")
    expected = {title: "The Lord Of The Rings",
      rental_details: {student_name: "Ian",
        date: "1/3/2019"}}
        assert_equal(expected, book1.details)
      end

      def test_create_library_and_find_book
        book1 = Book.new("The Lord Of The Rings")
        book1.set_rental_details("Ian", "1/3/2019")
        library = Library.new(book1)
        expected = book1
        assert_equal(expected, library.get_book("The Lord Of The Rings"))
      end

      def test_create_library_and_not_find_book
        book1 = Book.new("The Lord Of The Rings")
        book1.set_rental_details("Ian", "1/3/2019")
        library = Library.new(book1)
        assert_nil(library.get_book("The Martian"))
      end

      def test_create_library_and_3_books
        book1 = Book.new("The Lord Of The Rings")
        book1.set_rental_details("Ian", "1/3/2019")
        book2 = Book.new("The Martian")
        book2.set_rental_details("Ian", "10/3/2019")
        book3 = Book.new("Foundation")
        book3.set_rental_details("Ian", "20/3/2019")
        library = Library.new(book1)
        library.add_book(book2)
        library.add_book(book3)
        expected = 3
        assert_equal(expected, library.total_books)
      end

      def test_confirm_book3_details
        book1 = Book.new("The Lord Of The Rings")
        book1.set_rental_details("Ian", "1/3/2019")
        book2 = Book.new("The Martian")
        book2.set_rental_details("Ian", "10/3/2019")
        book3 = Book.new("Foundation")
        book3.set_rental_details("Ian", "20/3/2019")
        library = Library.new(book1)
        library.add_book(book2)
        library.add_book(book3)
        expected = book1.details 
        assert_equal(expected, library.get_book("The Lord Of The Rings").details)
      end

      def test_set_book_rental_details
        book1 = Book.new("The Lord Of The Rings")
        book2 = Book.new("The Martian")
        book3 = Book.new("Foundation")
        library = Library.new(book1)
        library.add_book(book2)
        library.add_book(book3)
        library.set_book_rental_details(book1.get_title, "Ian", "20/3/2019")
        expected = {student_name: "Ian", date: "20/3/2019"}
        assert_equal(expected, library.get_book("The Lord Of The Rings").get_rental_details)
      end

    end
