require('minitest/autorun')
require('minitest/rg')
require_relative('../Codeclan_students.rb')

class TestStudent < Minitest::Test
  def test_get_student_name
    student1 = Student.new('Arledis Forbes', 'G13', 'Ruby')
    assert_equal('Arledis Forbes', student1.student_name())
  end

def test_get_cohort
  student1 = Student.new('Arledis Forbes', 'G13', 'Ruby')
  assert_equal('G13', student1.cohort())
end

def test_get_favorite_language
  student1 = Student.new('Arledis Forbes', 'G13', 'Ruby')
  assert_equal('Ruby', student1.favorite_language())
end

def test_set_student_name
  student1 = Student.new('Arledis Forbes', 'G13', 'Ruby')
  student1.set_student_name('Amaya Forbes')
  assert_equal('Amaya Forbes', student1.student_name() )
end

def test_set_student_cohort
  student1 = Student.new('Arledis Forbes', 'G13', 'Ruby')
  student1.set_student_cohort('E18')
  assert_equal('E18', student1.cohort())
end

def test_set_favorite_language
  student1 = Student.new('Arledis Forbes', 'G13', 'Ruby')
  student1.set_student_favorite_language('Java')
  assert_equal('Java', student1.favorite_language())
end

def test_student_say
  student1 = Student.new('Arledis Forbes', 'G13', 'Ruby')
  assert_equal('I can talk!', student1.student_say)
end

def test_say_favorite_language
  student1 = Student.new('Arledis Forbes', 'G13', 'Ruby')
  assert_equal('I love Ruby!', student1.say_favorite_language('Ruby'))
end

end
