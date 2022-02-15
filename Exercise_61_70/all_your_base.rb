=begin
Write your code for the 'All Your Base' exercise in this file. Make the tests in
`all_your_base_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/all-your-base` directory.
=end
class BaseConverter
    def self.convert(input_base,digits,output_base)
      if input_base <= 1 or output_base <= 1 
        raise ArgumentError
      end
      check_condition = digits.any? {
        |digit|
        digit < 0 or digit >= input_base
      }
      raise ArgumentError if check_condition 
      sum = 0
      digits.reverse.each_with_index {
        |value,index|
        sum += value * (input_base ** index)
      }
      if sum == 0
        return [0]
      end
      output_digit = []
      while sum > 0
        output_digit += [sum%output_base]
        sum /= output_base
      end
      return output_digit.reverse  
    end
    
  end