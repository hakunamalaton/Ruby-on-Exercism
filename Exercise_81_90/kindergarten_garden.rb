=begin
Write your code for the 'Kindergarten Garden' exercise in this file. Make the tests in
`kindergarten_garden_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/kindergarten-garden` directory.
=end
class Garden
    PLANT = {
      "r" => :radishes,
      "c" => :clover,
      "g" => :grass,
      "v" => :violets
    }
    STUDENTS = %i[alice bob charlie david eve fred ginny harriet ileana joseph kincaid larry]
    def initialize(plants, students = [])
      @plant_row = plants.split("\n")
      if students.empty? 
        get_student_plants(STUDENTS)
      else
        get_student_plants(students.sort.map(&:downcase).map(&:to_sym))
  
      end
    end
  
    private
  
    def get_student_plants(students)
      students.each do |student|
        define_singleton_method(student) do
          index = students.index(student)
          (@plant_row[0][index*2..index*2+1]+@plant_row[1][index*2..index*2+1]).downcase.chars.map(&PLANT)
        end
      end
    end
  end