=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end
class Grains
    CHESS_BOARD = (1..64)
    def self.square(chess)
        return CHESS_BOARD.include? chess
    end
    def self.total
        
    end
  end

p Grains.square(5)