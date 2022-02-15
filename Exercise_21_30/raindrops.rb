=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

# .zero?
class Raindrops
    def self.convert(num)
      rain = ""
      if num % 3 == 0 
        rain << "Pling"
      end
      if num % 5 == 0 
        rain << "Plang"
      end
      if num % 7 == 0 
          rain << "Plong"
      end
      rain.length == 0 ? num.to_s : rain
    end
  end