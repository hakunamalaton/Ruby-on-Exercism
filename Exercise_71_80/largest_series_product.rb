=begin
Write your code for the 'Largest Series Product' exercise in this file. Make the tests in
`largest_series_product_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/largest-series-product` directory.
=end
class Series
    def initialize(str)
      raise ArgumentError if str.match?(/[^0-9]/)
      @digit = str.chars.map(&:to_i)
    end
    def largest_product(digit_number)
      raise ArgumentError if digit_number > @digit.length
      return 1 if digit_number == 0
      max = 0
      @digit.each_cons(digit_number) {
        |array|
        max = array.inject(:*) if array.inject(:*) > max
      }
      max
    end
  end