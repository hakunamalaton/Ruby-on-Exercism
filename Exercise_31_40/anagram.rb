=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end
class Anagram
    def initialize(ana)  
      @ana = ana
    end
  
    def match(words)
      words.select {
        |word|
        word.downcase != @ana.downcase
      }.select {
        |word|
        (word.downcase.chars.sort.join == @ana.downcase.chars.sort.join)
        }
    end
  end

  detector = Anagram.new('LISTEN')
  anagrams = detector.match(%w[Listen Silent LISTEN])
p anagrams