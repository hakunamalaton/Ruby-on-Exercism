=begin
Write your code for the 'Leap' exercise in this file. Make the tests in
`leap_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/leap` directory.
=end
class Year
    def self.leap?(y)
      if y % 400 == 0 or (y%4 == 0 and y%100!=0)
        true
      else
        false
      end
    end
  end