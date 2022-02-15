=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end
class SumOfMultiples
  def initialize(*mul)
    @mul = mul
  end 
  def to(up_to)
    (1...up_to).select {
      |num|
      multiple?(num)
    }.sum
  end
  def multiple?(num)
    @mul.any? {
      |m|
      num % m == 0
    }
  end
end