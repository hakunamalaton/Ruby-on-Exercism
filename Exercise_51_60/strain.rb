=begin
Write your code for the 'Strain' exercise in this file. Make the tests in
`strain_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/strain` directory.
=end
class Array
    def keep 
      self.select {
        |ele|
        yield ele
      }
    end
    def discard
      arr = self.keep
      return self - arr
    end
  end