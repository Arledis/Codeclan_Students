class Student

  def initialize(student_name, cohort, favorite_language)
    @student_name = student_name
    @cohort = cohort
    @favorite_language = favorite_language
  end

  def student_name
  return @student_name
  end
def cohort
  return @cohort
end

def favorite_language
  return @favorite_language
end

def set_student_name(name)
  @student_name = name
end

def set_student_cohort(cohort)
  @cohort = cohort
end

def set_student_favorite_language(favorite_language)
@favorite_language = favorite_language
end

  # def say_favorite_language(favorite_language)
  #   if (@favorite_language == 'Ruby')
  #   return @favorite_language = 'I love Ruby!'
  #   elsif (@favorite_language == 'Java')
  #   return @favorite_language = 'I love Java!'
  #   end
  #  end

def student_say()
  return 'I can talk!'
end

  def say_favorite_language(favorite_language)
    return "I love " + favorite_language + '!'
  end

end
