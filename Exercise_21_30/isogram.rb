=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

#uniq => array 
class Isogram
    def self.isogram?(input)
      input = input.gsub(/[ -]/,"")
      letters = input.downcase.split("")
      word_count = Hash.new(0)
      letters.each {
          |letter|
          word_count[letter] += 1
      }
      word_count.each_value {
          |val|
          return false if val > 1 
      }
    end
end