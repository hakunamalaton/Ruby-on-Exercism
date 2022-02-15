=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end

# subtract array
class Pangram
    def self.pangram?(seq) 
      letter = Hash.new(0)
      seq = seq.gsub(/[^A-Za-z]/,"")
      seq = seq
        .downcase
        .chars
        .sort
        .uniq
        .join
      return seq.length == 26 ? true : false
    end
  end