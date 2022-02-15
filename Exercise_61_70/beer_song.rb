=begin
Write your code for the 'Beer Song' exercise in this file. Make the tests in
`beer_song_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/beer-song` directory.
=end
class BeerSong
    def self.recite(b,p)
      @lyrics = ""
      return self.recit(b,p)
    end
    def self.recit(bottles, pass_around)

      if pass_around == 0
        return @lyrics[...-1]
      elsif bottles == 1
          @lyrics << "1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.\n\n"
      elsif bottles == 0
          @lyrics << "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.\n\n"      
      elsif bottles == 2
          @lyrics << "2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.\n\n"
      elsif bottles > 2
        @lyrics << "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
Take one down and pass it around, #{bottles-1} bottles of beer on the wall.\n\n"
      end
      return recit(bottles-1,pass_around-1)
    end
  end

  p BeerSong.recite(2,1)