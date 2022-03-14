=begin
Write your code for the 'Darts' exercise in this file. Make the tests in
`darts_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/darts` directory.
=end
class Darts
    def initialize(x,y)
      @radius = Math.sqrt(x**2 + y**2)
    end
  
    def score
      if @radius <= 1 # inner circle
        return 10
      elsif @radius <= 5
        return 5
      elsif @radius <= 10
        return 1
      else 
        return 0
      end
    end
  end
  