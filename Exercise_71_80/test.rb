=begin
Write your code for the 'Grade School' exercise in this file. Make the tests in
`grade_school_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grade-school` directory.
=end
class School
    def initialize
      @grade_roster = Hash.new([])
    end
  
    def add(name, grade)
      @grade_roster[grade.to_s] += [name]   
      p @grade_roster['1']
    end
  
    def students(grade)
      @grade_roster[grade.to_s].sort
    end
  end

#   school = School.new
#   grade    = 6
#   students = %w[Beemee Aimee Ceemee]
#   students.each { |student| school.add(student, grade) }
#   expected = students.sort
#   p school.students(grade)
a = {
    "1" => "ttt",
    "3" => "hhh",
    "11" => "fnfjd",
    "2" => "okk"
}

p a.sort_by {
    |key,value|
    key.to_i
}