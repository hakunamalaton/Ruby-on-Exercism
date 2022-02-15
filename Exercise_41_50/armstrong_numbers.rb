=begin
Write your code for the 'Armstrong Numbers' exercise in this file. Make the tests in
`armstrong_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/armstrong-numbers` directory.
=end
ArmstrongNumbers = [0]

(0..9475).each {
  |num|
  if num == num.to_s.split("").sum {
                                    |digit|
                                    digit.to_i ** num.to_s.length
                                    }
    ArmstrongNumbers << num
  end
}