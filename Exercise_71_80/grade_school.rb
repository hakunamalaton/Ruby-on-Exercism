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
      @grade_roster[grade.to_s].sort!
    end
  
    def students(grade)
      @grade_roster[grade.to_s]
    end
  
    def students_by_grade
      res = []
      @grade_roster.sort_by {
        |key,value|
        key.to_i
      }.each {
        |key,value|
        res += [{grade: key.to_i, students: value}]
      }
      res
    end
  end