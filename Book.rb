class Book

  # {
  #   title: "lord_of_the_rings",
  #   rental_details: {
  #    student_name: "Jeff",
  #    date: "01/12/16"
  #   }
  # }


  attr_reader :book

  def initialize(title)
    @book = {title: title,
      rental_details: {
        student_name: "",
        date: ""}}
      end

      def get_title
        # binding.pry
        return @book[:title]
      end

      def get_rental_details
        return @book[:rental_details]
      end

      def set_rental_details(student, the_date)
        @book[:rental_details] = {student_name: student, date: the_date}
      end

    end
