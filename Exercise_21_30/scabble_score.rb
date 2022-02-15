=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end
class Scrabble
    def initialize(word)
      @word = word
    end

    def self.score(input)
        Scrabble.new(input).score  # new input.score
    end
  
    def score
      value = 0
      if @word == nil 
        return value
      end
      @word.each_char {
      |w|
      case w.downcase
        when /[aeioulnrst]/ then value += 1
        when /[dg]/ then value += 2
        when /[bcmp]/ then value += 3
        when /[fhvwy]/ then value += 4    
        when /[k]/ then value += 5
        when /[jx]/ then value += 8 
        when /[qz]/ then value += 10
        else value += 0
      end 
      }
      value
    end
  end