require('minitest/autorun')
require('minitest/rg')
require_relative('../Student.rb')

class TestStudent < Minitest::Test

  def test_student_name
    student = Student.new("Ian", "G11")
    assert_equal("Ian", student.get_name())
  end

  def test_student_cohort
    student = Student.new("Ian", "G11")
    assert_equal("G11", student.get_cohort())
  end

  def test_student_name_change
    student = Student.new("Ian", "G11")
    student.set_name("Big Dog")
    assert_equal("Big Dog", student.get_name())
  end

  def test_student_cohort_change
    student = Student.new("Ian", "G11")
    student.set_cohort("G99")
    assert_equal("G99", student.get_cohort())
  end

  def test_student_talk
    student = Student.new("Ian", "G11")
    assert_equal("I can talk!", student.talk())
  end

  def test_favourite_language
    student = Student.new("Ian", "G11")
    assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
  end

end
