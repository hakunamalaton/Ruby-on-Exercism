=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end
class Acronym
  def self.abbreviate(phrase)
    
    letter = phrase.gsub('-',' ').split  # scan string
    puts letter
    letter.map {
      |word|
      word[0].upcase if word[0].ord >= 65 and  word[0].ord <= 90 or word[0].ord >= 97 and  word[0].ord <= 122 
    }.join
  end
end