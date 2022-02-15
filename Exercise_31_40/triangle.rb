=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end
class Triangle
    def initialize(triangle)
      @triangle = triangle
    end
  
    def equilateral? 
      @triangle.each {
        |edge|
        return false if edge <= 0
      }
      return (@triangle[0] == @triangle[1] and @triangle[0] == @triangle[2]) ? true : false 
    end
  
    def isosceles? 
      @triangle.each {
        |edge|
        return false if edge <= 0
      }
      @triangle = @triangle.sort
      if @triangle[0] + @triangle[1] > @triangle[2] 
        if @triangle[0] == @triangle[1] or @triangle[2] == @triangle[1]
          true
        else
        false
        end
      else
        false
      end
    end
  
    def scalene? 
      @triangle.each {
        |edge|
        return false if edge <= 0
      }
      @triangle = @triangle.sort
      if @triangle[0] != @triangle[1] and @triangle[0] != @triangle[2] and @triangle[1] != @triangle[2] and @triangle[0] + @triangle[1] > @triangle[2]
        true
      else
      false
      end
    end
  end