=begin
Write your code for the 'Prime Factors' exercise in this file. Make the tests in
`prime_factors_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/prime-factors` directory.
=end
require 'prime'
class PrimeFactors
  def self.of(number)
    return [] if number < 2
    i = 2
    res = []
    while number > 1
      if number % i == 0
        res += [2]
        number /= 2
      else
        i++
      end
    end
  end
end