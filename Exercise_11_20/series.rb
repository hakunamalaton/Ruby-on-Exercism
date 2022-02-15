=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

# each_cons :)
class Series
    attr_accessor :seq
    def initialize(str_num)
      @seq = str_num
    end
  
    def slices(digit)
      raise ArgumentError if digit > @seq.length
      if @seq.length == digit
        return [@seq]
      else
        res_arr = []
        (@seq.length-digit+1).times {
          |i|
          res_arr[i] = @seq[i...(i+digit)]
        }
        res_arr
      end
    end
end