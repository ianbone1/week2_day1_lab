class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def new_name(new_name)
    @name = new_name
  end

  def new_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk()
    return "I can talk!"
  end

  def say_favourite_language(codes_in)
    return "I love #{codes_in}"
  end

end
